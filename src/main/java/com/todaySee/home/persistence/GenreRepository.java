package com.todaySee.home.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Genre;

public interface GenreRepository extends CrudRepository<Genre, Integer>{


	
}
