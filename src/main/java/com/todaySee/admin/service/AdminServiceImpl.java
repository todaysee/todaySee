package com.todaySee.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.admin.persistence.AdminUserRepository;
import com.todaySee.domain.User;

@Service
public class AdminServiceImpl implements AdminService {

	 @Autowired
	 private AdminUserRepository adminRepository;
	
	public List<User> getUserList(User user){
		
		return (List<User>) adminRepository.findAll();
	}
	
	public User getUser(@PathVariable Integer userNumber) {
		
		return  adminRepository.findById(userNumber).get();
	}

	
}
