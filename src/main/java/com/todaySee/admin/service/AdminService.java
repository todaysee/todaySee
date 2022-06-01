package com.todaySee.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.springframework.data.repository.query.Param;
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
	
	
	public void insertContent(Content co, Integer [] genre1, Integer [] ott1,String contentottLink);
	
	public void contentDeleteUpdate( Integer contentNumber);
	
	public void contentUpdate(Content content, Integer contentNumber);
	
}
