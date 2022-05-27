package com.todaySee.home.persistence;


import com.todaySee.domain.Review;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, Integer> {



	UserVO findByUserEmail(String userEmail);

	UserVO findByReviews(Review review);

	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	Optional<UserVO> findByUserEmail(String username);


}
