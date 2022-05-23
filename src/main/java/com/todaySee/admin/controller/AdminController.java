package com.todaySee.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.todaySee.admin.service.AdminService;
import com.todaySee.admin.service.AdminServiceImpl;
import com.todaySee.domain.User;

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
	public String userList(Model m, User user) {
	m.addAttribute("userList",adminService.getUserList(user));
		
		return "admin/userList";
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

    @GetMapping("/image")
    public String image(Model m) {
        System.out.println("image 페이지 접속");
		return "admin/image";
    }
    
    @GetMapping("/userReport")
    public String adminTable() {
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
	public User userList2(Model m, User u, @PathVariable Integer userNumber) throws Exception {
	
		User addList = adminService.getUser(userNumber);

		return addList;
	}
	
    

//	@GetMapping("/testReport")
//	public String testReport() {
//		return "/admin/testReport";
//	}
	




}
