package com.todaySee.home.service;

//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.todaySee.domain.User;
import com.todaySee.domain.UserCreateForm;
import com.todaySee.home.persistence.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl {
	
	private final UserRepository userRepository;
	//private final PasswordEncoder passwordEncoder;
	
	
	public  User create(User user) {
//		User uuser = new User();
//		uuser.setUserName(uuser.getUserName());
//		uuser.setUserEmail(uuser.getUserEmail());
//		uuser.setUserNickname(uuser.getUserNickname());
//		uuser.setUserPassword(uuser.getUserPassword());
//		uuser.setUserGender(uuser.getUserGender());
//		uuser.setUserTel(uuser.getUserTel());
//		
		
		
		
		return userRepository.save(user);
		
	}



}
