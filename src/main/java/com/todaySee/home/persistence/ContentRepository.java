package com.todaySee.home.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;

public interface ContentRepository extends CrudRepository<Content, Integer>{
	

}
