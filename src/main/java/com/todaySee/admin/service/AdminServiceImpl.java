package com.todaySee.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.todaySee.admin.persistence.AdminContentRepository;
import com.todaySee.admin.persistence.AdminReportRepository;
import com.todaySee.admin.persistence.AdminUserRepository;
import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.ContentOtt;
import com.todaySee.domain.Ott;
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
		
		
//		List<HashMap<String,Object>> returnList = new ArrayList<HashMap<String,Object>>();
//		/* content = Content(~~ =~~, contentOtt=ContentOtt(~~=~~)) */
//		for (  Content content : (List<Content>) adminContentRepository.findAll() ) {
//			List<ContentOtt> contentOtt = content.getContentOtt();
//			for( ContentOtt ott : contentOtt ) {
//				HashMap<String, Object> map = new HashMap<String,Object>();
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
//					HashMap<String, Object> map2 = new HashMap<String,Object>();
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
	
	public void insertContent(Content co, String[] genre1, String[] ott1, String contentottLink) {
		adminContentRepository.contentQuery(co);
		
		for (String genre : genre1) {
			adminContentRepository.genreQuery(genre);
				
		}
		
		for (String ott : ott1) {
			adminContentRepository.ottQuery(ott, contentottLink);
			
		}
		
		
		
	}
	
	
	

}
