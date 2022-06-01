package com.todaySee.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todaySee.admin.service.AdminService;
import com.todaySee.admin.service.AdminServiceImpl;
import com.todaySee.domain.Content;

import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.Genre;


import com.todaySee.domain.UserVO;


@Controller
public class AdminController {

	
	@Autowired
	AdminService adminService;
	
	
	@GetMapping("/admin")
	public String adminChart() {
		return "admin/movieChart";
	}
	
	@GetMapping("/admin/userChart")
	public String adminChart2() {
		return "admin/userChart";
	}
	
	
	
	@GetMapping("/admin/userList")
	public String userList(Model m, UserVO user) {
	m.addAttribute("userList",adminService.getUserList(user));
		
		return "admin/userList";
	}
	
	

	
    @GetMapping("/image")
    public String image(Model m) {
        System.out.println("image 페이지 접속");
		return "admin/image";
    }
    
    
    @GetMapping("/userReport")
    public String adminTable(Model m ) {
    	
    	m.addAttribute("reportList", adminService.getReportList());
    	
    	return "admin/userReport";
    }
    
    
	/**
	 * @param Modal m
	 * @param User u
	 * @param userNumber  회원번호
	 * @return 회원정보List 리턴
	 * @throws Exception
	 */
	@GetMapping("/admin/userList/{userNumber}")
	@ResponseBody
	public UserVO userList2( @PathVariable Integer userNumber) throws Exception {

		UserVO addList = adminService.getUser(userNumber);

		return addList;
	}
	


	/**
	 * @param 클릭시 영상의 number를 보냄
	 * @return ajax를 통해 content 타입 뷰에 보냄
	 */
	@GetMapping("/admin/movieAdmin/{contentNumber}")
	@ResponseBody
	public Content ajaxContent(@PathVariable Integer contentNumber) {
		Content ajaxContent = adminService.getContentDetails(contentNumber);
		
		return ajaxContent;
	}
	
	/**
	 * @param co		Input값 Content정보 
	 * @param genre1	Input값 여러개의 ott장르
	 * @param ott1		Input값 여러개의 ott플랫폼
	 * @param contentottLink	Input값 ott플랫폼에 넣을 링크
	 * @return			viewPage movieAdmin
	 */
	@PostMapping("/movieAdd")
	public String movieAdd(Content co, Integer [] genre1, Integer [] ott1, String contentottLink ) { // 
		
			adminService.insertContent(co, genre1, ott1,contentottLink);
		
		return "redirect:/movieAdmin";
	}

	
	/**
	 * @param Model m : 전체 컨텐츠 영상 리스트 값 전달
	 * @return view 페이지 movieAdmin페이지로 이동
	 */
	@GetMapping("/movieAdmin")
	public String movieAdmin(Model m) {
		m.addAttribute("contentList",adminService.getAllContent());
		return "admin/movieAdmin";
	}
	//@RequestMapping(value="/contentDeleteUpdate/{contentNumber}",method = RequestMethod.PUT )
	@PutMapping("admin/contentDeleteUpdate")	// 넘어가는 값이 폼태그 안에 있는 값으로 넘어가기 때문에 어쩔수 없이 url 주소가아니라 변수로 받아야함
	public String contentDeleteUpdate( Integer contentNumber) {
		System.out.println("**********************"+contentNumber);
		adminService.contentDeleteUpdate(contentNumber);
		
		return "redirect:/movieAdmin";
	}
	
	@PutMapping("admin/contentUpdate")
	public String contentUpdate(Content content, Integer contentNumber) {
		System.out.println(content.getContentAge()+"****************************************");
		System.out.println(contentNumber+"****************************************");
		
		adminService.contentUpdate(content, contentNumber);
		return "redirect:/movieAdmin";
	}
	
	

}
