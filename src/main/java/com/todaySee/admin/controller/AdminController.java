package com.todaySee.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@GetMapping("/admin")
	public String adminChart() {
		return "admin/movieChart";
	}
	
	@GetMapping("/admin/userChart")
	public String adminChart2() {
		return "admin/userChart";
	}
	
	@GetMapping("/admin/userList")
	public String userList() {
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
}
