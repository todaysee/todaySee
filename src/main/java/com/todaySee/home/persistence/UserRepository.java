package com.todaySee.home.persistence;

import com.todaySee.domain.Review;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, Integer> {


	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	UserVO findByUserEmail(String userEmail);


	UserVO findByReviews(Review review);



}
