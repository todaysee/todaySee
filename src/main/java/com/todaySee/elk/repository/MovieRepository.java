package com.todaySee.elk.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import com.todaySee.elk.domain.Movie;

public interface MovieRepository extends ElasticsearchRepository<Movie, String> {

}
