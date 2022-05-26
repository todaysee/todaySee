package com.todaySee.home.service;


import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.todaySee.domain.User;
import com.todaySee.home.persistence.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private final UserRepository userRepository;
	
	//회원가입
	
	@Override
	public  User create(User user) {
		return userRepository.save(user);
	}
	
	//로그인 
	
	@Override
	public User login(String userEmail, String userPassword){
		User findUser = userRepository.findByUserEmailAndUserPassword(userEmail, userPassword);
		if(findUser != null) return findUser;
			else return null;
	}

}
