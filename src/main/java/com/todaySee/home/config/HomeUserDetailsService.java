package com.todaySee.home.config;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.todaySee.domain.UserVO;
import com.todaySee.home.persistence.UserRepository;

/*
 *  작성자 : 문혜진
 *  역할 : UserDetails 객체에 실제 데이터베이스에서 검색한 사용자 정보를 저장.
 */

@Service
public class HomeUserDetailsService implements UserDetailsService {
	@Autowired
	private UserRepository userRepo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		// UserRepository로 회원정보를 조회하며
		// UserDetails 타입의 객체로 리턴한다. 
				
		//	Optional<UserVO> optional = userRepo.findByUserEmail(username);

		Optional<UserVO> optional = Optional.ofNullable(userRepo.findByUserEmail(username));
		if(!optional.isPresent()) {
			throw new UsernameNotFoundException(username + "사용자 없음");
		} else {
			UserVO user = optional.get();
			return new SecurityUser(user);
		}
	}
	
	

}
