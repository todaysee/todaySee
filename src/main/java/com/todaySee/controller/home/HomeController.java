package com.todaySee.controller.home;


import com.todaySee.service.home.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    HomeService homeService;

    //테스트 페이지
    @GetMapping("/2")
    public String ss() {
        return "/index2";
    }

    //홈 페이지
    @GetMapping("/")
    public String homeIndex() {
        return "/home/homeIndex";
    }

    //목록 페이지
    @GetMapping("/list")
    public String homeList() {
        return "/home/homeList";
    }

    //상세 페이지
    @GetMapping("/details")
    public String homeDetails() {
        return "/home/homeDetails";
    }

    //회원가입 페이지
    @GetMapping("/signUp")
    public String homeSignUp() {
        return "/home/homeSignUp";
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

    //아이디 찾기 페이지
    @GetMapping("/idFind")
    public String homeIdFind() {
        return "/home/homeIdFind";
    }

    //비밀번호 찾기 페이지
    @GetMapping("/passwordFind")
    public String homePasswordFind() {
        return "/home/homePasswordFind";
    }








}
