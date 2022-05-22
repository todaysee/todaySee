package com.todaySee.admin.service;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.domain.User;

public interface AdminService {

	
	public List<User> getUserList(User user);
	
	public User getUser(@PathVariable Integer userNumber);
}
