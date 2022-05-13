package com.todaySee.persistence.home;

import com.todaySee.domain.home.HomeVO;
import org.springframework.data.repository.CrudRepository;

public interface HomeRepository extends CrudRepository<HomeVO, Integer> {
}
