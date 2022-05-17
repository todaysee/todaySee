package com.todaySee.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.admin.domain.test1;

public interface AdminService {

	
	
		public List<test1> getUserList(test1 user);
		
		public test1 getUser(@PathVariable Integer userNumber);

}
