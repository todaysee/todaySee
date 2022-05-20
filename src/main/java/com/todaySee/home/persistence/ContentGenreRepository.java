package com.todaySee.home.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.ContentGenre;

public interface ContentGenreRepository extends CrudRepository<ContentGenre, Integer> {

}
