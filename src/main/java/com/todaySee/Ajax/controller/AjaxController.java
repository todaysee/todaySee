package com.todaySee.Ajax.controller;

import com.todaySee.myPage.service.MyPageService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class AjaxController {

    //페이징기능
    @GetMapping("/test3")
    public String test3() {
        return "ajaxTestFileJsp/testAjaxPaging";
    }
    
    //더보기기능
    @GetMapping("/test4")
    public String test4(Model model) {
        return "ajaxTestFileJsp/testAjaxMore";
    }

    //스크롤기능
    @GetMapping("/test5")
    public String test5(Model model) {
        return "ajaxTestFileJsp/testAjaxScroll";
    }
}
