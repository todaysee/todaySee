package com.todaySee.home.controller;

import java.util.Properties;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.todaySee.domain.UserVO;
import com.todaySee.home.service.UserService;
import com.todaySee.home.service.UserServiceImpl;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class UserRestController {
	
	private final JavaMailSender mailSender;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Value("${spring.mail.username}")
    private String sender;
	
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
    	//로그인 할 때 마다 날짜 업데이트 
    	//System.out.println("PostMapping"+emailCheckBox);
    	UserVO user = userService.login(userEmail, userPassword);
    	 String message = "";
    	 if(user == null) {
    		 System.out.println("로그인실패");
    		 message = "N";
    		 return message;
    	 }else {
    		 System.out.println(userEmail + " 로그인");
    		 session.setAttribute("userNumber", user.getUserNumber());
    		 session.setAttribute("userNickname", user.getUserNickname());
    		 session.setAttribute("admin", user.getUserAdmin());
    		 session.setMaxInactiveInterval(60*60*24);
    		 //로그인 할때 마다 가입일짜 업데이트
    		 
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
    			 } 
    			 
    		} 
    		 
    		 userService.updateUserLoginDate((Integer) session.getAttribute("userNumber"));
    		 
    		 return message;
    	 } 
    }
    
        @PostMapping("/sendEmail")
    	public String sendForgotPassword(String userEmail) {
        	System.out.println(userEmail + "메일을 보내야되는 이메일 주소 ");
        	StringBuffer sb = new StringBuffer(); //인증번호를 담을 변수
            
         char[] cert = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
                    'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
                    'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
        		
            Random random = new Random(System.currentTimeMillis());
            
            for(int i=0; i<10; i++) {	// 인증번호는 10자리
            sb.append(cert[random.nextInt(cert.length)]);
             }	
            
            
          //메세지를 생성하고 보낼 메일 설정 저장
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(userEmail);
            message.setFrom(sender);
            message.setSubject(" [오늘 이거 볼래?] New Temporary Password is here!");
            message.setText("Hello!.  We send your temporary password here. =====> " + sb.toString() + "  <==========But this is not secured so please change password once you sign into our site. ");
            mailSender.send(message);
            
            return sb.toString();
        } //end of sendForgotPassword() 
        
        @PostMapping("/mypageCheckPwd")
        public String checkMypagePassword(HttpSession session, String userPassword)  {
        	//System.out.println("비밀번호 확인 "+userPassword);
        	//System.out.println("세션  확인 "+session.getAttribute("userNumber"));
        	UserVO user = userService.checkMypagePassword((Integer) session.getAttribute("userNumber"));
        	if( encoder.matches(userPassword, user.getUserPassword())) {
        		return "Y";
        	}
        	return "N";
        	
        }
        
        @PostMapping("/mypageSignOut")
        public String mypagSignOut(HttpSession session, String userPassword) {
        	UserVO user = userService.checkMypagePassword((Integer) session.getAttribute("userNumber"));
        	if( encoder.matches(userPassword, user.getUserPassword())) {
        		return "Y";
        	}
        	return "N";
        }

    }

