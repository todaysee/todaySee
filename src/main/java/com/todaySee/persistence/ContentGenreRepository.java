package com.todaySee.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.ContentGenre;

public interface ContentGenreRepository extends CrudRepository<ContentGenre, Integer> {
	
}
