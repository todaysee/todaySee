package com.todaySee.home.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


import com.todaySee.domain.UserVO;
import com.todaySee.persistence.UserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private final UserRepository userRepository;
	@Autowired
	private PasswordEncoder encoder;
	
	//회원가입
	@Override
	public  UserVO create(UserVO user) {
		user.setUserPassword(encoder.encode(user.getUserPassword()));
		return userRepository.save(user);
	}
	
	//로그인 
	@Override
	public UserVO login(String userEmail, String userPassword){
		UserVO findUser = userRepository.findByUserEmail(userEmail);
		if(encoder.matches(userPassword, findUser.getUserPassword())) {
			return findUser;
	}
		return null;
	}
	
	//email 중복체크 
	@Override
	public String emailCheck(String userEmail) {
		UserVO result = userRepository.findByUserEmail(userEmail);
		String message = "";
		if(result == null) {
			 message = "Y";
		 } 
		return message;
	}

	// email찾기 
	@Override
	public String emailFind(UserVO user) {
		//UserVO result = userRepository.findByUserNameAndUserTel(user.getUserName(), user.getUserTel());
		List<UserVO> result = userRepository.findByUserNameAndUserTel(user.getUserName(), user.getUserTel());
		String message="Y";
		if(result == null) {
			message = "N";
			}
		System.out.println("서비스 "+message);
		return message;
	}

	// email 목록 불러오기
	@Override
	public List<UserVO> homeEmailFindList(UserVO user) {
		List<UserVO> result = userRepository.findByUserNameAndUserTel(user.getUserName(), user.getUserTel());
			return result;
	}

}

