package com.todaySee.home.service;


import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.todaySee.domain.UserVO;
import com.todaySee.home.persistence.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private final UserRepository userRepository;
	
	//회원가입
	
	@Override
	public  UserVO create(UserVO user) {
		return userRepository.save(user);
	}
	
	//로그인 
	
	@Override
	public UserVO login(String userEmail, String userPassword){
		UserVO findUser = userRepository.findByUserEmail(userEmail);
		//Optional<User> findUser = userRepository.findById(userEmail);
		
		if(findUser == null) return findUser;
		else return null;
	}//이 함수 아님 
	

	


}
