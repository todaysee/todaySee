package com.todaySee.admin.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.admin.persistence.AdminContentRepository;
import com.todaySee.admin.persistence.AdminReportRepository;
import com.todaySee.admin.persistence.AdminUserRepository;
import com.todaySee.admin.persistence.TransactionalRepository;
import com.todaySee.domain.CommentsComments;
import com.todaySee.domain.CommentsCommentsReport;
import com.todaySee.domain.CommentsReport;
import com.todaySee.domain.Community;
import com.todaySee.domain.CommunityReport;
import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.ContentOtt;
import com.todaySee.domain.Report;
import com.todaySee.domain.ReviewReport;
import com.todaySee.domain.UserVO;
import com.todaySee.persistence.CommentsCommentsReportRepository;
import com.todaySee.persistence.CommentsReportRepository;
import com.todaySee.persistence.CommentsRepository;
import com.todaySee.persistence.CommunityReportRepository;
import com.todaySee.persistence.ReviewReportRepository;

@Service
public class AdminServiceImpl implements AdminService {

	 @Autowired
	 private AdminUserRepository adminRepository;
	 
	 @Autowired
	 private AdminContentRepository adminContentRepository;
	 
	 @Autowired
	 private AdminReportRepository adminReportRepository;
	 
//	신고 Repo
	@Autowired
	private CommentsCommentsReportRepository coCommentReportRepo;
	
	@Autowired
	private CommentsReportRepository commentReportRepo;
		
	@Autowired
	private ReviewReportRepository reviewReportRepo;
	
	@Autowired
	private CommunityReportRepository communityReportRepo; 
	
//	신고 Repo
	
	
	
	public List<UserVO> getUserList(UserVO user){
		
		return (List<UserVO>) adminRepository.findAll();
	}
	
	public UserVO getUser(@PathVariable Integer userNumber) {
		
		return  adminRepository.findById(userNumber).get();
	}
	
	
	public List<Object[]> getAllContent(){
		
		return adminContentRepository.getContent();
		
	}
	public Content getContentDetails(@PathVariable Integer contentNumber){
		return  adminContentRepository.findById(contentNumber).get();
	}
	
	 
	public List<Report> getReportList() {
		
		return  (List<Report>) adminReportRepository.findAll();
	}
	public Content movieSave(Content co) {
		
		return adminContentRepository.save(co);
	}
	
	@Transactional
	public void insertContent(Content co, Integer [] genre1, Integer[] ott1,String contentottLink)  {
		
			adminContentRepository.save(co);
	    	 for (Integer ott : ott1) {
	    		 adminContentRepository.ottQuery(ott,contentottLink);
	    	 }
	    	 for (Integer genre : genre1) {
	    		adminContentRepository.genreQuery(genre);
			}
	}
	
	public void contentDeleteUpdate( Integer contentNumber) {
		Content content = adminContentRepository.findById(contentNumber).get();
		
		content.setContentState(1);
		System.out.println(content.getContentState());
		System.out.println("*************"+content.toString());
		adminContentRepository.save(content);
	}
	
	public void contentUpdate(Content content, Integer contentNumber) {
		
		Content preContent = adminContentRepository.findById(contentNumber).get();
		preContent.setContentInfo(content.getContentInfo());
		preContent.setContentAge(content.getContentAge());
		preContent.setContentReleaseDate(content.getContentReleaseDate());
		
		
		adminContentRepository.save(content);
	}
	
	public List<CommunityReport> getCommunityreport(){
		List<CommunityReport> list = (List<CommunityReport>) communityReportRepo.findAll();
		
		
		
		
		return list;
		
		
	}
	
	public List<CommentsReport> getCommentsReport(){
		
		
		return (List<CommentsReport>) commentReportRepo.findAll();
	}
	
	public List<CommentsCommentsReport> getCommentsCommentsReport(){
		
		return (List<CommentsCommentsReport>) coCommentReportRepo.findAll();
		
	}
	
	public List<ReviewReport> getReviewReport(){
		
		
		return (List<ReviewReport>) reviewReportRepo.findAll();
		
	}
	
	public CommunityReport getFindById( @PathVariable Integer contentNumber) {
		
		
		return communityReportRepo.findById(contentNumber).get();
	}
	

	public int getCommunityReportCount(@PathVariable Integer reportNumber) {
		CommunityReport c= communityReportRepo.findById(reportNumber).get();
		
		Integer userNumber = c.getUser().getUserNumber();
		
		
		return communityReportRepo.communityCount(userNumber);
	}
	
	
	
	public void communityReportWork(@PathVariable Integer communityReportNumber) {
		
		CommunityReport c = communityReportRepo.findById(communityReportNumber).get();
		
		c.setCommunityReportState(1);
		communityReportRepo.save(c);
	}
	
	
	
	public ReviewReport getReviewFindById(@PathVariable Integer reportNumber) {
		
		return reviewReportRepo.findById(reportNumber).get();
	}
	
	public int getReviewReportCount(@PathVariable Integer reportNumber) {
		ReviewReport r = reviewReportRepo.findById(reportNumber).get();
		Integer userNumber = r.getUser().getUserNumber();
		
		return reviewReportRepo.reviewCount(userNumber);
	}
	
	public void reviewReportWork(@PathVariable Integer reportNumber) {
		ReviewReport r = reviewReportRepo.findById(reportNumber).get();
		
		r.setReviewReportState(1);
		reviewReportRepo.save(r);
		
	}
	
	
	
	
	public CommentsReport getCommentFindById(@PathVariable Integer reportNumber) {
		
		return commentReportRepo.findById(reportNumber).get();
	}
	
	public int getCommentReportCount(@PathVariable Integer reportNumber) {
		CommentsReport c = commentReportRepo.findById(reportNumber).get();
		Integer userNumber = c.getUser().getUserNumber();
		
		return commentReportRepo.commentsCount(userNumber);
		
	}
	public void commentsReportWork(@PathVariable Integer reportNumber) {
		
		CommentsReport c = commentReportRepo.findById(reportNumber).get();
		c.setCommentsReportState(1);
		
		commentReportRepo.save(c);
		
	}
	
	
	
	
	
	
	public CommentsCommentsReport getCommentsCommentsFindById(@PathVariable Integer reportNumber) {
		return coCommentReportRepo.findById(reportNumber).get();
	}
	
	public int getCoCommentsReportCount(@PathVariable Integer reportNumber) {
		CommentsCommentsReport c = coCommentReportRepo.findById(reportNumber).get();
		Integer userNumber = c.getUser().getUserNumber();
		
		return coCommentReportRepo.coCommentsCount(userNumber);
	}
	
	public void commentsCommentsReportWork(@PathVariable Integer reportNumber) {
		CommentsCommentsReport c = coCommentReportRepo.findById(reportNumber).get();
		c.setCommentsCommentsReportState(1);
		coCommentReportRepo.save(c);
		
	}
	
}
