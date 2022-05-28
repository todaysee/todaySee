package com.todaySee.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.domain.Content;
import com.todaySee.domain.Report;
import com.todaySee.domain.UserVO;

public interface AdminService {

	
	public List<UserVO> getUserList(UserVO user);
	
	public UserVO getUser(@PathVariable Integer userNumber);
	
	
	public  List<Content> getAllContent();
	
	public Content getContentDetails(@PathVariable Integer contentNumber);
	
	
	public List<Report> getReportList();
	
	public Content movieSave(Content co);
	
	public void insertContent(Content co, String[] genre1, String[] ott1, String contentottLink);
}
