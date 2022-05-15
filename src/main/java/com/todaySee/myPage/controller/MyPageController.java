package com.todaySee.myPage.controller;


import com.todaySee.myPage.domain.MyPageVO;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MyPageController {

    @Autowired
    private MyPageService myPageService;

    @GetMapping("/myPage")
    public String myPage(Model m) {
        return "/myPage/myPage";
    }

    @GetMapping("/myPage/board")
    public String myPageBoard(Model m) {
        return "/myPage/myPageBoard";
    }

    @GetMapping("/myPage/view")
    public String myPageView(Model m) {
        return "/myPage/myPageView";
    }

    @GetMapping("/myPage/like")
    public String myPageLike(Model m) {
        return "/myPage/myPageLike";
    }

    @GetMapping("/myPage/comments")
    public String myPageComments(Model m) {
        return "/myPage/myPageComments";
    }

    @GetMapping("/myPage/bookMark")
    public String myPageBookMark(Model m) {
        return "/myPage/myPageBookMark";
    }

    @GetMapping("/myPage/myPageGrade")
    public String myPageGrade(Model m) {
        return "/myPage/myPageGrade";
    }

    @GetMapping("/myPage/list")
    public String test(Model model) {
        MyPageVO vo = new MyPageVO();
        List<MyPageVO> list = myPageService.getContentList(vo);
        model.addAttribute("contentList", list);
        return "/myPage/test";
    }

}
