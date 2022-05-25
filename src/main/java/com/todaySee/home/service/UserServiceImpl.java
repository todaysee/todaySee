package com.todaySee.home.service;

//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.todaySee.domain.User;
import com.todaySee.home.persistence.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl {
	
	private final UserRepository userRepository;
	
	
	public  User create(User user) {

		
		
		return userRepository.save(user);
		
	}



}
