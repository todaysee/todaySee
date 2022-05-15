package com.todaySee.admin.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@GetMapping("/admin")
	public String adminMain() {
		return "admin/adminIndex";
	}
	
	

 

    @RequestMapping("/image")
    public void image(Model m) {
        System.out.println("image 페이지 접속");
    }
    
    @GetMapping("/adminTable")
    public String adminTable() {
    	return "admin/adminTable";
    }
}
