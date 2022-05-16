package com.todaySee.myPage.controller;

import com.todaySee.myPage.service.MyPageService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class AjaxController {

    @Autowired
    private MyPageService myPageService;

    @GetMapping("/test3")
    public String test3() {
        return "/myPage/testAjax";
    }

    @GetMapping("/test4")
    public String test4(Model model) {
//        MyPageVO vo = new MyPageVO();
//        List<MyPageVO> list = myPageService.getContentList(vo);
//        model.addAttribute("contentList", list);
        return "/myPage/testAjaxScroll";
    }

}
