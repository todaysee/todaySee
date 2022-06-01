package com.todaySee.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.ContentOtt;
import com.todaySee.domain.Report;
import com.todaySee.domain.UserVO;

@Service
public class AdminServiceImpl implements AdminService {

	 @Autowired
	 private AdminUserRepository adminRepository;
	 
	 @Autowired
	 private AdminContentRepository adminContentRepository;
	 
	 @Autowired
	 private AdminReportRepository adminReportRepository;
	 
	 @Autowired 
	 private TransactionalRepository transRepo;
	
		
	 
	
	public List<UserVO> getUserList(UserVO user){
		
		return (List<UserVO>) adminRepository.findAll();
	}
	
	public UserVO getUser(@PathVariable Integer userNumber) {
		
		return  adminRepository.findById(userNumber).get();
	}
	
	
	public List<Content> getAllContent(){
		
		
//		List<HashMap<String,Object>> returnList = new ArrayList<HashMap<String,Object>>();		
//		/* content = Content(~~ =~~, contentOtt=ContentOtt(~~=~~)) */
//		for (  Content content : (List<Content>) adminContentRepository.findAll() ) {
//			List<ContentOtt> contentOtt = content.getContentOtt();
//			HashMap<String, Object> map = new HashMap<String,Object>();
//			HashMap<String, Object> map2 = new HashMap<String,Object>();
//			for( ContentOtt ott : contentOtt ) {
//				
//				String resultOtt= ott.getOtt().getOttName();
//				
//				map.put("ott", resultOtt);
//				map.put("contentTitle",content.getContentTitle());
//				map.put("contentAge", content.getContentAge());
//				map.put("contentRunningTime", content.getContentRunningTime());
//				map.put("contentReleaseDate", content.getContentReleaseDate());
//				map.put("contentNumber", content.getContentNumber());
//				
//				returnList.add(map);
//			}
//			
//			for (Content content2 : (List<Content>) adminContentRepository.findAll() ) {
//				List<ContentGenre> contentGenre = content2.getContentGenre();
//				for (ContentGenre genre : contentGenre) {
//					
//					String genre2 = genre.getGenre().getGenreName();
//					
//					map2.put("genre", genre2);
//					
//					returnList.add(map2);
//				}
//			}
//		}
		return (List<Content>) adminContentRepository.findAll();
		
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
	
	
}
