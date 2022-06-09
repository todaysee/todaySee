
package com.todaySee.home.config;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.todaySee.domain.UserVO;

/*

 * 작성자 : 문혜진
 * 역할 : 검색한 User객체를 UserDetails 타입의 객체로 바꾸기 위함(p.444)
 * org.spring.framework.security.core.userdetails.User 클래스 상속. 
 * User 클래스의 생성자를 호출할 때, 검색결과로 얻은 UserVO 객체의 값 전달. 
 */

public class SecurityUser extends User {
	private static final long serialVersionUID = 1L;
	
	public SecurityUser(UserVO uservo) {
		super(uservo.getUserEmail(), uservo.getUserPassword(),
				AuthorityUtils.createAuthorityList(uservo.getUserAdmin().toString())
				);
		
		
	}

}

