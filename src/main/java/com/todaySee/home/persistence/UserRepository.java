package com.todaySee.home.persistence;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.todaySee.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

	
	User findByUserEmailAndUserPassword(String userEmail, String userPassword);


}
