package com.todaySee.home.service;

import java.util.List;

import com.todaySee.domain.UserVO;

public interface UserService {

	UserVO create(UserVO user);
	
	UserVO login(String userEmail, String userPassword);
	
	String emailCheck(String userEmail);
	
	String emailFind(UserVO user);
	
	List<UserVO> homeEmailFindList(UserVO user);
	
}