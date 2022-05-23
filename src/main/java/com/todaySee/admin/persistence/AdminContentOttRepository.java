package com.todaySee.admin.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.ContentGenre;

public interface AdminContentOttRepository extends CrudRepository<ContentGenre, Integer>{

	
}
