package com.todaySee.home.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.todaySee.domain.User;
import com.todaySee.home.service.UserService;


@SessionAttributes("user")
@Controller
public class UserController {
	
	 @Autowired
		private UserService userService;
	 
	 
	 
	 //인덱스페이지
	 @GetMapping("/")
	public String homeIndex() {
		return "/home/homeIndex";
	}

	//회원가입방법 선택 
    @GetMapping("/homechooseLogin")
    public String homechooseLogin() {
    	return "/home/homechooseLogin";
    }

    //회원가입 페이지
    @GetMapping("/signup")
    public String homeSignUp() {
    	return "/home/homeSignUp";
    }
    
    @PostMapping("/signup")
    public String signUp(User user) {
    	userService.create(user);
        return "/home/homeSignUpComplete";
    }
    
    
    //회원가입 완료 페이지
    @GetMapping("/complete")
    public String homeSignUpComplete() {
        return "/home/homeSignUpComplete";
    }

    //로그인 페이지
    @GetMapping("/login")
    public String homeLogin() {
        return "/home/homeLogin";
    }
    
    @PostMapping("/login")
    public String login(String userEmail, String userPassword, Model model) {
    	User findUser = userService.login(userEmail, userPassword);
    	
    	if (findUser != null
    			&& findUser.getUserPassword().equals(userPassword)) {
    		model.addAttribute("user", findUser);
    		return "/home/homeIndex";
    	} else {
    		return "/home/homeLogin";
    	}
    }
    

    //아이디 찾기 페이지
    @GetMapping("/idFind")
    public String homeIdFind() {
        return "/home/homeIdFind";
    }
    
    //아이디 찾기 이메일 목록 리스트 페이지 
    @GetMapping("/homeIdFindList")
    public String homeIdFindList() {
    	return "/home/homeIdFindList";
    }

    //비밀번호 찾기 페이지
    @GetMapping("/passwordFind")
    public String homePasswordFind() {
        return "/home/homePasswordFind";
    }

    //비밀번호 재설정 페이지
    @GetMapping("/homeResettingPwd")
    public String homeResettingPwd() {
    	return "/home/homeResettingPwd";
    }
    
}
