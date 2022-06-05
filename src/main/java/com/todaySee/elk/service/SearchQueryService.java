package com.todaySee.elk.service;


import java.util.ArrayList;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.todaySee.domain.Content;
import com.todaySee.elk.domain.Movie;
import com.todaySee.elk.helper.Indices;

@Service
public class SearchQueryService {

	
	 private static  ObjectMapper MAPPER = new ObjectMapper().configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES,false);
	    private static  Logger LOG = LoggerFactory.getLogger(SearchQueryService.class);
	    
	    @Autowired
	    private RestHighLevelClient client;
	
	   
	
	public ArrayList<Movie> getByQuery( String query) {
		try {
			SearchRequest request = new SearchRequest(Indices.PROJECT_MOVIE);
			SearchSourceBuilder ssb = new SearchSourceBuilder();
			ssb.query(QueryBuilders.multiMatchQuery(query, "content_title", "content_info","genre_name","ott_name")).size(20);
			request.source(ssb);
			 SearchResponse documentFields = client.search(
					request,
					RequestOptions.DEFAULT
			);
			if (documentFields == null ) {
                return null;
                
            }
            SearchHits hits = documentFields.getHits();
            SearchHit[] searchHits = hits.getHits();
            System.out.println(searchHits.length);
            
            
            ArrayList<Movie> resultList = new ArrayList<>();
            for (SearchHit hit : searchHits) {
            	System.out.println(hit);
            	Movie movie = MAPPER.readValue(hit.getSourceAsString(), Movie.class);
            	
            	resultList.add(movie);
            	System.out.println(movie);
            }
            
			return resultList;
			
		}catch (Exception e) {
			LOG.error(e.getMessage(),e);
			return null;
		}
		
		
		
		
	}
	
	
}
