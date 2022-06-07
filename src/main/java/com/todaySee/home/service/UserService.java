package com.todaySee.home.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.todaySee.domain.UserVO;

public interface UserService {

	UserVO create(UserVO user);
	
	UserVO login(String userEmail, String userPassword);
	
	String emailCheck(String userEmail);
	
	String emailFind(UserVO user);
	
	List<UserVO> homeEmailFindList(UserVO user);
	
	// 로그인 : DB에 입력된 이메일과 비밀번호가 일치하는 레코드 검색 
	UserVO loginCheckEmail(UserVO user, HttpSession session);
	
}