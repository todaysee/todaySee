package com.todaySee.home.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.todaySee.domain.User;
import com.todaySee.domain.UserCreateForm;
import com.todaySee.home.service.UserServiceImpl;


//@RequiredArgsConstructor
@Controller
public class UserController {
	
	 @Autowired
		private UserServiceImpl userServiceImpl;
	 
	 
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
    	System.out.println("Get");
        return "/home/homeSignUp";
    }
    
    @PostMapping("/signup")
    public String signUp(User user) {
    	System.out.println("Post됐나?");
    	userServiceImpl.create(user);
        return "/home/homeSignUp";
    }
    
    /*
    @PostMapping("/signup")
    public String homeSignUp(@Valid UserCreateForm userCreateForm, BindingResult bindingResult) {
    	System.out.println("postsignup");
    	if (bindingResult.hasErrors()) {
    		return "/home/homeSignUp";
    	}
    	if (!userCreateForm.getUserPassword1().equals(userCreateForm.getUserPassword2())) {
            bindingResult.rejectValue("password2", "passwordInCorrect", 
                    "2개의 패스워드가 일치하지 않습니다.");
    		return "/home/homeSignUp";
        }
       
    	
    	userService.create(userCreateForm.getUserName(),userCreateForm.getUserEmail(), userCreateForm.getUserPassword1());

        return "redirect:/";
}

 */
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
