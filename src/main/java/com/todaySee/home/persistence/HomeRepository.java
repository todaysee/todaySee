package com.todaySee.home.persistence;


import com.todaySee.home.domain.HomeVO;
import org.springframework.data.repository.CrudRepository;

public interface HomeRepository extends CrudRepository<HomeVO, Integer> {
}
