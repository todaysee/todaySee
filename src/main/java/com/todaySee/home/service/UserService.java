package com.todaySee.home.service;

import com.todaySee.domain.User;

public interface UserService {

	User create(User user);
	
	//User login(User user);
	User login(String userEmail, String userPassword);
	


}