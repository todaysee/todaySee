package com.todaySee.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.todaySee.domain.UserVO;
import com.todaySee.home.service.UserServiceImpl;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserRestController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	 //Email 중복체크 
    @PostMapping("/emailCheck")
	 public String emailCheck(UserVO user) {
    	return userServiceImpl.emailCheck(user.getUserEmail());
	 }

    // 아이디찾기 
    @PostMapping("/emailFind")
    public String emailFind(UserVO user) {
    	System.out.println("컨트롤러 "+userServiceImpl.emailFind(user));
    	return userServiceImpl.emailFind(user);
    }
    
}
