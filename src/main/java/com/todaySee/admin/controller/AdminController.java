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
import com.todaySee.domain.User;


@Controller
public class AdminController {

	
	@Autowired
	AdminService s;
	
	
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
	m.addAttribute("userList",s.getUserList(user));
		
		return "admin/userList";
	}
	
	@GetMapping("/movieAdmin")
	public String movieAdmin() {
		return "admin/movieAdmin";
	}

    @RequestMapping("/image")
    public void image(Model m) {
        System.out.println("image 페이지 접속");
    }
    
    @GetMapping("/userReport")
    public String adminTable() {
    	return "admin/userReport";
    }
	@GetMapping("/admin/userList/{userNumber}")
	@ResponseBody
	public User userList2(Model m, User u, @PathVariable Integer userNumber) throws Exception {
	
		User addList = s.getUser(userNumber);

		return addList;
	}
	
    

	@GetMapping("/testReport")
	public String testReport() {
		return "/admin/testReport";
	}





}
