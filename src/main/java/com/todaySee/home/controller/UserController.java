package com.todaySee.home.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.todaySee.domain.UserVO;
import com.todaySee.home.service.UserServiceImpl;


@SessionAttributes("user")
@Controller
public class UserController {
	
	 @Autowired
		private UserServiceImpl userServiceImpl;
	 
	 @Autowired
		private PasswordEncoder encoder;
	 

	//회원가입방법 선택 
    @GetMapping("/homechooseLogin")
    public String homechooseLogin() {
    	return "/home/homechooseLogin";
    }

    //회원가입 페이지
    @GetMapping("/signUp")
    public String homeSignUp() {

    	return "/home/homeSignUp";
    }
    
    @PostMapping("/signUp")
    public String signUp(UserVO user) {
    	userServiceImpl.create(user);
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
    	System.out.println("GetMapping");
        return "/home/homeLogin";
    }
    
    @PostMapping("/login")
    public String login(String userEmail, String userPassword, Model model,HttpSession session) {
    	System.out.println("PostMapping");
        UserVO findUser = userServiceImpl.login(userEmail, userPassword);
    	if (findUser != null
    		) {
    		model.addAttribute("user", findUser);
    		session.setAttribute("userNumber", findUser.getUserNumber());
    		session.setMaxInactiveInterval(60*60*24);
    		System.out.println("세션"+session.getAttribute("userNumber"));
    		return "redirect:/";
    	
    	} else {
    		return "/home/homeLogin";
    	}
    }
    
    //Email 중복체크 
    @PostMapping("/emailCheck")
    @ResponseBody
	 public String emailCheck(UserVO user) {
    	UserVO result = userServiceImpl.emailCheck(user.getUserEmail());
		 String message = "";
		 if(result == null) {
			 message = "Y";
		 } 
		 
		 return message;
	 }
	 
     // 로그인 성공 후에  Index Page에서 session값을 받아 myPage Profile로 이동 
    @GetMapping("/userCheck")
    public String userCheck(HttpSession session) {
    	if(session.getAttribute("userNumber")==null) {
    		return "/home/homeLogin";
    	}else {
    		return "redirect:myPage/profile";
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
