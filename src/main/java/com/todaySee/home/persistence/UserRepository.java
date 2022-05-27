package com.todaySee.home.persistence;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface UserRepository extends CrudRepository<UserVO, Integer> {


	UserVO findByUserEmailAndUserPassword(String userEmail, String userPassword);
	
	Optional<UserVO> findByUserEmail(String username);

}
