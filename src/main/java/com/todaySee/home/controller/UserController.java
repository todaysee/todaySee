package com.todaySee.home.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todaySee.domain.UserVO;
import com.todaySee.home.service.UserService;


@SessionAttributes("user")
@Controller
public class UserController {
	
	 @Autowired
		private UserService userService;
	 
	 @Autowired
		private PasswordEncoder encoder;

	//회원가입방법 선택 
    @GetMapping("/homeChooseLogin")
    public String homeChooseLogin() {
    	return "/home/homeChooseLogin";
    }

    //회원가입 페이지
    @GetMapping("/signUp")
    public String homeSignUp() {

    	return "/home/homeSignUp";
    }
    
    @PostMapping("/signUp")
    public String signUp(UserVO user, RedirectAttributes re) {
    	userService.create(user);
    	re.addAttribute("userNickname", user.getUserNickname());
        return "redirect:/complete";
    }
    
    
    //회원가입 완료 페이지
    @GetMapping("/complete")
    public String homeSignUpComplete(@RequestParam("userNickname") String userNickname, Model m) {
    	m.addAttribute("userNickname", userNickname);
        return "/home/homeSignUpComplete";
    }

    //로그인 페이지
    @GetMapping("/login")
    public String homeLogin() {
    	System.out.println("GetMapping");
        return "/home/homeLogin";
    }
    
    
    @PostMapping("/successLogin")
    public String login(String userEmail, String userPassword, Model model,HttpSession session) {
    	System.out.println("PostMapping"+session.getAttribute("userNumber"));

    		return "redirect:/";
    	
    }


     // 로그인 성공 후에  Index Page에서 session값을 받아 myPage Profile로 이동 
    @GetMapping("/userCheck")
    public String userCheck(HttpSession session, HttpServletRequest request, HttpServletResponse response ) {
    	if(session.getAttribute("userNumber")==null) {
    		return "/home/homeLogin";
    	}else if(Integer.valueOf(session.getAttribute("admin").toString()) == 0) {
    		return "redirect:myPage/profile";
    	}else {
    		return "redirect:/admin";
    	}
    }
    
    
  // 로그아웃
    @GetMapping("/userLogout")
    public String Logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/";
    }

    

    //아이디 찾기 페이지
    @GetMapping("/emailFind")
    public String emailFind() {
        return "/home/emailFind";
    }
    
    
    //아이디 찾기 이메일 목록 리스트 페이지 
   @RequestMapping("/homeEmailFindList")
    public String homeEmailFindList(UserVO user, Model m) {
	  System.out.println(user.getUserName()+"말해줘");
    	m.addAttribute("userEmailList", userService.homeEmailFindList(user));
    	return "/home/homeEmailFindList";
    }

    //비밀번호 찾기 페이지
    @GetMapping("/passwordFind")
    public String homePasswordFind() {
        return "/home/homePasswordFind";
    }

    //비밀번호 재설정 페이지
    @GetMapping("/homeResettingPwd")
    public String homeResettingPwd(UserVO user, Model m, HttpSession session) {
    	m.addAttribute("userEmail", user.getUserEmail());
    	return "/home/homeResettingPwd";
    	
    }
    
    @PostMapping("/updatingPwd")
    public String updatingPwd(UserVO user) {
    	userService.updatingPwd(user);
    	return "redirect:/login";
    }
    
    }
 
 
