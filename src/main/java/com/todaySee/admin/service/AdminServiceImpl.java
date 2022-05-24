package com.todaySee.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.admin.persistence.AdminContentRepository;
import com.todaySee.admin.persistence.AdminReportRepository;
import com.todaySee.admin.persistence.AdminUserRepository;
import com.todaySee.domain.Content;
import com.todaySee.domain.Report;
import com.todaySee.domain.User;

@Service
public class AdminServiceImpl implements AdminService {

	 @Autowired
	 private AdminUserRepository adminRepository;
	 
	 @Autowired
	 private AdminContentRepository adminContentRepository;
	 
	 @Autowired
	 private AdminReportRepository adminReportRepository;
	
	 
	
	public List<User> getUserList(User user){
		
		return (List<User>) adminRepository.findAll();
	}
	
	public User getUser(@PathVariable Integer userNumber) {
		
		return  adminRepository.findById(userNumber).get();
	}
	
	
	public List<Content> getAllContent(){
		
		return (List<Content>) adminContentRepository.findAll();
		
		
		
	}
	public Content getContentDetails(@PathVariable Integer contentNumber){
		return  adminContentRepository.findById(contentNumber).get();
	}
	
	 
	public List<Report> getReportList() {
		
		return  (List<Report>) adminReportRepository.findAll();
	}
	

}
