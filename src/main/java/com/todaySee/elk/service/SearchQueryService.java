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
			ssb.query(QueryBuilders.multiMatchQuery(query, "content_title", "content_info","genre_name","ott_name").field("content_title",
					3).field("content_info", 2)).size(30);		//검색시 가중치 부여 및 검색량 30개로 늘리기
			request.source(ssb);
			 SearchResponse documentFields = client.search(
					request,
					RequestOptions.DEFAULT
			);
			if (documentFields == null ) {
                return null;
                
            }
            SearchHits hits = documentFields.getHits();			
            SearchHit[] searchHits = hits.getHits();			//여러개의 hits가 있어서 리스트로 담는다
//            System.out.println(searchHits.length);				// hits의 리스트 길이 확인 출력
            
            
            ArrayList<Movie> resultList = new ArrayList<>();
            for (SearchHit hit : searchHits) {
            	System.out.println(hit);
            	Movie movie = MAPPER.readValue(hit.getSourceAsString(), Movie.class);			// Movie 객체의 대이터타입에 movie변수이름으로 담는다
            	
            	resultList.add(movie);													//리스트에 넣기
//            	System.out.println(movie);												//확인차 출력
            }
            
			return resultList;
			
		}catch (Exception e) {
			LOG.error(e.getMessage(),e);
			return null;
		}
		
		
		
		
	}
	
	
}
