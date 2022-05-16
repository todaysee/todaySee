package com.todaySee.myPage.controller;

import com.todaySee.myPage.domain.MyPageVO;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AjaxController {

    @Autowired
    private MyPageService myPageService;

    @GetMapping("/test")
    public String test(Model model) {
        MyPageVO vo = new MyPageVO();
        List<MyPageVO> list = myPageService.getContentList(vo);
        model.addAttribute("contentList", list);
        return "/myPage/test";
    }

}
