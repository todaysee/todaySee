package com.todaySee.persistence;


import com.todaySee.domain.Ott;
import org.springframework.data.repository.CrudRepository;

public interface OttRepositroy extends CrudRepository<Ott, Integer> {
	
	Ott findByOttNumber(Integer ottNumber);
}
