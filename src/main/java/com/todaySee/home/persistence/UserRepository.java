package com.todaySee.home.persistence;

import com.todaySee.domain.Review;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, Integer> {

	UserVO findByUserEmail(String userEmail);

}
