package com.todaySee.persistence;

import java.util.List;

import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<UserVO, Integer> {


	/**	사용자 세션에 따른 userNickname 찾기
	 *		- 세션에 저장된 userNumber를 통해 닉네임 찾기
	 * @param userNumber : 세션에 저장됨
	 * @return	userNickname
	 */
	UserVO findByUserNumber(Integer userNumber);

	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	UserVO findByUserEmail(String userEmail);

	List<UserVO> findByUserNameAndUserTel(String userName, String userTel);
	
	
	

}
