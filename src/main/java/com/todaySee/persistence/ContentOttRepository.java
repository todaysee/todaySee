package com.todaySee.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.ContentOtt;
import com.todaySee.domain.Ott;

public interface ContentOttRepository extends CrudRepository<ContentOtt, Integer> {

	
	ContentOtt findByOtt(Ott ott);
	

}
