package com.todaySee.admin.service;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.domain.Content;
import com.todaySee.domain.Report;
import com.todaySee.domain.User;

public interface AdminService {

	
	public List<User> getUserList(User user);
	
	public User getUser(@PathVariable Integer userNumber);
	
	
	public List<Content> getAllContent();
	
	public Content getContentDetails(@PathVariable Integer contentNumber);
	
	
	public List<Report> getReportList();
	
}
