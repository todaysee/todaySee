package com.todaySee.persistence;

import java.util.List;

import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<UserVO, Integer> {

	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	UserVO findByUserEmail(String userEmail);

	List<UserVO> findByUserNameAndUserTel(String userName, String userTel);
	
}
