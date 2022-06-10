package com.todaySee.home.service;



import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		user.setUserProfileYn(0);
		user.setUserAdmin(0);
		user.setUserState(0);
		user.setUserTitleProfileYn(0);
		user.setUserPassword(encoder.encode(user.getUserPassword()));
		return userRepository.save(user);
	}
	
	//로그인 
	@Override
	public UserVO login(String userEmail, String userPassword){
		UserVO findUser = userRepository.findByUserEmail(userEmail);
		if(findUser == null) {
			return null;
		}else if(!encoder.matches(userPassword, findUser.getUserPassword())) {
			return null;
	}else {
		return findUser;
	}
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
		System.out.println("String message 값 " + result);
		if(result.isEmpty()) {
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

	@Override
	public UserVO loginCheckEmail(UserVO user, HttpSession session) {
		
		return null;
	}

	@Override
	public void updatingPwd(UserVO user) {
		UserVO updateUser = userRepository.findByUserEmail(user.getUserEmail());
		updateUser.setUserPassword(encoder.encode(user.getUserPassword()));
		userRepository.save(updateUser);
		
	}

	@Override
	public UserVO updateUserLoginDate(Integer userNumber) {
		Date date = new Date();
		UserVO userVO = userRepository.findById(userNumber).get();
		userVO.setUserLoginDate(date);
		return userRepository.save(userVO);
	}

 // 마이페이지 비밀번호 확인한 후에 정보수정 
	@Override
	public UserVO checkMypagePassword(Integer userNumber) {		
		return userRepository.findById(userNumber).get();
	}

	//회원탈퇴 
	@Override
	public UserVO removalEmail(Integer userNumber) {
		//회원의 세션 정보로 레코드 검색 
		UserVO userVO = userRepository.findById(userNumber).get();
		
		// 검색한 레코드에 칼럼값을 수정 - 회원의 상태
		userVO.setUserState(1);
		
	
	return userRepository.save(userVO);
}

	
	

}

