package com.todaySee.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManagerFactory;

import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.domain.CommentsCommentsReport;
import com.todaySee.domain.CommentsReport;
import com.todaySee.domain.CommunityReport;
import com.todaySee.domain.Content;
import com.todaySee.domain.Report;
import com.todaySee.domain.ReviewReport;
import com.todaySee.domain.UserVO;

public interface AdminService {

	
	public List<UserVO> getUserList(UserVO user);
	
	public UserVO getUser(@PathVariable Integer userNumber);
	public void userDelete(Integer userNumber);
	
	
	public List<Object[]> getAllContent();
	
	public Content getContentDetails(@PathVariable Integer contentNumber);
	
	
	public List<Report> getReportList();
	
	public Content movieSave(Content co);
	
	
	public void insertContent(Content co, Integer [] genre1, Integer [] ott1,String contentottLink);
	
	public void contentDeleteUpdate( Integer contentNumber);
	
	public void contentUpdate(Content content, Integer contentNumber);
	
	public List<CommunityReport> getCommunityreport();
	
	public List<CommentsReport> getCommentsReport();
	
	public List<CommentsCommentsReport> getCommentsCommentsReport();
	
	public List<ReviewReport> getReviewReport();
	
	public CommunityReport getFindById(@PathVariable Integer contentNumber);
	public int getCommunityReportCount(@PathVariable Integer contentNumber);
	public void communityReportWork(@PathVariable Integer communityReportNumber);
	
	public ReviewReport getReviewFindById(@PathVariable Integer reportNumber);
	public int getReviewReportCount(@PathVariable Integer contentNumber);
	public void reviewReportWork(@PathVariable Integer reportNumber);
	
	
	public CommentsReport getCommentFindById(@PathVariable Integer reportNumber);
	public int getCommentReportCount(@PathVariable Integer reportNumber);
	public void commentsReportWork(@PathVariable Integer reportNumber);
	
	public CommentsCommentsReport getCommentsCommentsFindById(@PathVariable Integer reportNumber);
	public int getCoCommentsReportCount(@PathVariable Integer reportNumber);
	public void commentsCommentsReportWork(@PathVariable Integer reportNumber);
}
