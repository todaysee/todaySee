package com.todaySee.home.persistence;


import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, Integer> {


	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	UserVO findByUserEmail(String userEmail);


	
	



}
