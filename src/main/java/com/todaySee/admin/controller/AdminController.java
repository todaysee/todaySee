package com.todaySee.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.todaySee.domain.Community;
import com.todaySee.domain.CommunityReport;
import com.todaySee.domain.Content;

import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.Genre;


import com.todaySee.domain.UserVO;


@Controller
public class AdminController {

	
	
	@Autowired
	AdminService adminService;
	
	
	@GetMapping("/admin")
	public String adminChart(HttpSession session) {
		
		
		if ( (int)session.getAttribute("admin") == 0) {
			
			return "redirect:/";
		}
		
		
		return "admin/movieChart";
		
		
	}
	
	/*
	 * @GetMapping("/admin/userChart") public String adminChart2() { return
	 * "admin/userChart"; }
	 */
	
	
	
	/**
	 * @param m 유저리스트를 보냄
	 * @param user 
	 * @return view page
	 */
	@GetMapping("/admin/userList")
	public String userList(Model m, UserVO user,HttpSession session) {
				
			if ( (int)session.getAttribute("admin") == 0) {
				return "redirect:/";
			}
		
			m.addAttribute("userList",adminService.getUserList(user));
		
		return "admin/userList";
	}
	
	@PutMapping("/admin/user/delete/{userNumber}")
	@ResponseBody
	public String userDelete( @PathVariable Integer userNumber) {
		adminService.userDelete(userNumber);
		
		return "삭제가 되었습니다.";
	}
	

	
    @GetMapping("/image")
    public String image(Model m) {
        System.out.println("image 페이지 접속");
		return "admin/image";
    }
    
    
//    @GetMapping("/userReport")
//    public String adminTable(Model m ) {
//    	
//    	m.addAttribute("reportList", adminService.getReportList());
//    	
//    	return "admin/userReport";
//    }
    
    
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
		
		return "/admin/movieAdmin";
	}
	
	
	
	
	/**
	 * @param contentNumber findbyid를 통해서 상태를 1로 바꿈
	 * @return viewpage
	 */
	@PutMapping("/admin/contentDeleteUpdate")	// 넘어가는 값이 폼태그 안에 있는 값으로 넘어가기 때문에 어쩔수 없이 url 주소가아니라 변수로 받아야함
	public String contentDeleteUpdate( Integer contentNumber) {
		System.out.println("**********************"+contentNumber);
		adminService.contentDeleteUpdate(contentNumber);
		
		return "redirect:/movieAdmin";
	}
	
	/**
	 * @param content : input 값
	 * @param contentNumber : findbyid로 정보 찾은뒤 기존의 데이터에 수정된 값을 교체하기 위해 
	 * @return view page
	 */
	@PutMapping("/admin/contentUpdate")
	public String contentUpdate(Content content, Integer contentNumber) {
		
		adminService.contentUpdate(content, contentNumber);
		return "redirect:/movieAdmin";
	}
	
	
	
	/**
	 * @param 커뮤니티 신고 리스트를 보냅니다.
	 * @return 뷰페이지 지정
	 */
	@GetMapping("/admin/communityReport")
	public String adminCommunityReport(Model m) {
		m.addAttribute("communityReport",adminService.getCommunityreport());
		
		
		return "/admin/communityReport";
	}
	
	
	
	/**
	 * @param 리뷰 신고 리스트르 보냅니다.
	 * @return view페이지 
	 */
	@GetMapping("/admin/reviewReport")
	public String adminReviewReport(Model m) {
		m.addAttribute("reviewReport",adminService.getReviewReport());
		
		return "/admin/reviewReport";
	}
	
	
	
	/**
	 * @param 댓글의 신고 리스트를 보냅니다
	 * @return view 페이지
	 */
	@GetMapping("/admin/commentsReport")
	public String adminCommentsReport(Model m) {
		m.addAttribute("commentsReport",adminService.getCommentsReport());
		
		return "/admin/commentsReport";
	}
	
	
	
	/**
	 * @param m 대댓글의 신고 리스트를 보냅니다.
	 * @return view페이지
	 */
	@GetMapping("/admin/commentsCommentsReport")
	public String adminCommentsCommentsReport(Model m) {
		m.addAttribute("commentsCommentsReport",adminService.getCommentsCommentsReport());
		
		return "/admin/commentsCommentsReport";
	}

	/**
	 * @param m  reportnumber를 받아서 communityReport vo정보를 가져옵니다.
	 * @param reportNumber 인거를 잘못 적었습니다. 
	 * @return view page
	 */
	@GetMapping("/admin/CommunityReport/{contentNumber}")
	public String reportDetails(Model m , @PathVariable Integer contentNumber ) {
		m.addAttribute("communityReport",adminService.getFindById(contentNumber));
		
		
		m.addAttribute("count",adminService.getCommunityReportCount(contentNumber));
		return "/admin/communityDetails";
	}
	
	/**
	 * @param communityReportNumber 커뮤니티신고번호 를 받아서 신고처리 누르면 삭제상태처리를 1로 변경
	 * @return view page
	 */
	@PutMapping("/admin/communityReportWork/{communityReportNumber}")
	public String communityReportWork(@PathVariable Integer communityReportNumber) {
		adminService.communityReportWork(communityReportNumber);
		
		return "redirect:/admin/communityReport";
	}
	
	 /* @param m 리뷰신고번호를 찾아 view단으로 보냅니다.
	 * @param reportNumber 리뷰 신고번호를 받아 정보를 찾는다
	 * @return view page
	 */
	@GetMapping("/admin/reviewReport/{reportNumber}")
	public String reviewDetails(Model m, @PathVariable Integer reportNumber) {
		
		m.addAttribute("reviewReport", adminService.getReviewFindById(reportNumber));
		m.addAttribute("count",adminService.getReviewReportCount(reportNumber));
		return "/admin/reviewDetails";
		
	}
	
	/**
	 * @param reportNumber 신고번호로 정보를 찾고 신고처리 누르면 신고상태 변경
	 * @return view page
	 */
	@PutMapping("/admin/reviewReportWork/{reportNumber}")
	public String reviewReportWork(@PathVariable Integer reportNumber) {
		
		adminService.reviewReportWork(reportNumber);
		
		return "redirect:/admin/reviewReport";
		
	}
	
	
	/**
	 * @param m 정보를 view단으로 보냅니다.
	 * @param reportNumber 신고번호를 받아 정보를 찾는다
	 * @return view page
	 */
	@GetMapping("/admin/commentsReport/{reportNumber}")
	public String commentsReport(Model m,@PathVariable Integer reportNumber) {
		m.addAttribute("commentsReport",adminService.getCommentFindById(reportNumber));
		m.addAttribute("count",adminService.getCommentReportCount(reportNumber));
		return "/admin/commentsDetails";
	}
	
	/**
	 * @param reportNumber받아 신고처리 누르면 신고상태 변경
	 * @return view page
	 */
	@PutMapping("/admin/commentsReportWork/{reportNumber}")
	public String commentsReportWork(@PathVariable Integer reportNumber) {
		adminService.commentsReportWork(reportNumber);
		
		return "redirect:/admin/commentsReport";
	}
	
	
	@GetMapping("/admin/commentsCommentsReport/{reportNumber}")
	public String commentsCommentsReport(Model m,@PathVariable Integer reportNumber) {
		m.addAttribute("commentsCommentsReport",adminService.getCommentsCommentsFindById(reportNumber));
		m.addAttribute("count",adminService.getCoCommentsReportCount(reportNumber));
		
		
		return "/admin/commentsCommentsDetails";
	}
	
	@PutMapping("/admin/commentsCommentsReportWork/{reportNumber}")
	public String commentsCommentsReportWork(@PathVariable Integer reportNumber) {
		adminService.commentsCommentsReportWork(reportNumber);
		return "redirect:/admin/commentsCommentsReport";
	}
	
	
	
	
}
