package com.todaySee.home.controller;

import java.util.Properties;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.todaySee.domain.UserVO;
import com.todaySee.home.service.UserService;
import com.todaySee.home.service.UserServiceImpl;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserRestController {
	
	@Autowired
	private UserService userService;
	
	 //Email 중복체크 
    @PostMapping("/emailCheck")
	 public String emailCheck(UserVO user) {
    	return userService.emailCheck(user.getUserEmail());
	 }

    // 아이디찾기 
    @PostMapping("/emailFind")
    public String emailFind(UserVO user) {
    	System.out.println("컨트롤러 "+userService.emailFind(user));
    	return userService.emailFind(user);
    }
    
    // 로그인하기(email 기억하기) 
    @PostMapping("/login")
    public String login(String userEmail, String userPassword,boolean emailCheckBox, Model model, 
    		HttpSession session, HttpServletRequest request, HttpServletResponse response) {
    	System.out.println("PostMapping"+emailCheckBox);
    	UserVO user = userService.login(userEmail, userPassword);
    	 String message = "";
    	 if(user == null) {
    		 System.out.println("로그인실패");
    		 message = "N";
    		 return message;
    	 }else {
    		 System.out.println("********로그인 성공******");
    		 session.setAttribute("userNumber", user.getUserNumber());
    		 session.setAttribute("userNickname", user.getUserNickname());
    		 session.setAttribute("admin", user.getUserAdmin());
    		 session.setMaxInactiveInterval(60*60*24);
    		 
    		 if(emailCheckBox) {
    			 // 체크박스에 체크가 되어있다면 
    			Cookie[] getCookie = request.getCookies();
    			
    			// 저장되어 있는 쿠키값이 없으면 새로 생성 
    			if(getCookie == null) {
    				Cookie checkEmail = new Cookie("checkEmail", user.getUserEmail());
    				checkEmail.setMaxAge(60*60*24*30); 
    				response.addCookie(checkEmail);
    				
    			}else {
    				// 저장되어있는 쿠키값이 있으면 삭제하고 다시 생성
    				Cookie deleteEmail = new Cookie("checkEmail", null);
    				deleteEmail.setMaxAge(0);
    				response.addCookie(deleteEmail);
    				
    				Cookie checkEmail = new Cookie("checkEmail", user.getUserEmail());
    				checkEmail.setMaxAge(60*60*24*30);
    				response.addCookie(checkEmail);
    			} // End of If(getCookie==null)
    		 
    		 }else {
    			 //체크박스에 체크가 안되어 있을 때 
    			 Cookie[] getCookie = request.getCookies(); //쿠키를 얻어옴 
    			 
    			 if(getCookie != null) {
    				 Cookie deleteEmail = new Cookie("checkEmail", null);
    				 deleteEmail.setMaxAge(0);
    				 response.addCookie(deleteEmail);
    			 } // End of if ( 체크박스에 체크가 안되어 있을 때)
    			 
    		} //End of if (체크박스에 체크가 되어있는지)
    		 System.out.println(session.getAttribute(message) + "확인");
    		 
    		 return message;
    	 } 
    }
    
    /* 비밀번호 찾기 
    @PostMapping
    public String findPassword(UserVO user) {
    
    	final String userId = "munnemiroh@naver.com";
    	final String password = "";
    	StringBuffer sb = new StringBuffer();
    	
    	Properties prop = new Properties();
    	prop.put("mail.smtp.host", "smtp.naver.com");
    	prop.put("mail.smtp.port", 587);
    	prop.put("mail.smtp.auth", "true");
    	prop.put("mail.smtp.ssl.enable", "false");
    	prop.put("mail.smtp.ssl.trust", "smtp.naver.com");
    	
       
    	
    }
    }
    
    
    */
}
