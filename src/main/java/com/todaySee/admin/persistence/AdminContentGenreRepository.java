package com.todaySee.admin.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.ContentOtt;

public interface AdminContentGenreRepository extends CrudRepository<ContentOtt,Integer> {

}
