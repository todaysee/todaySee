package com.todaySee.home.service;

import com.todaySee.domain.UserVO;

public interface UserService {

	UserVO create(UserVO user);
	
	UserVO login(String userEmail, String userPassword);
	


}