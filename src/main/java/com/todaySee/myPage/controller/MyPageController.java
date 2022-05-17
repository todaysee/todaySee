package com.todaySee.myPage.controller;


import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

    @Autowired
    private MyPageService myPageService;

    //마이페이지 홈
    @GetMapping("/myPage")
    public String myPage(Model m) {
        return "/myPage/myPage";
    }

    //마이페이지 작성 게시글 목록
    @GetMapping("/myPage/review")
    public String myPageBoard(Model m) {
        return "/myPage/myPageReviewList";
    }

    @GetMapping("/myPage/like")
    public String myPageLike(Model m) {
        return "/myPage/myPageLike";
    }

    @GetMapping("/myPage/bookMark")
    public String myPageBookMark(Model m) {
        return "/myPage/myPageBookMark";
    }

    @GetMapping("/myPage/myPageGrade")
    public String myPageGrade(Model m) {
        return "/myPage/myPageGrade";
    }

    @GetMapping("/myPage/update")
    public String myPageUpdateUser(Model m) {
        return "/myPage/myPageUpdateUser";
    }

    @GetMapping("/myPage/profile")
    public String myPageProfile() {
        return "/myPage/myPageProfile";
    }

    @GetMapping("/myPage/comments")
    public String myPageComments() {
        return "/myPage/myPageCommentsList";
    }

    @GetMapping("/myPage/list")
    public String mypageBoardCommnetsList() {
        return "/myPage/mypageBoardCommnetsList";
    }

    @GetMapping("/myPage/modal")
    public String modal() {
        return "/myPage/test2";
    }

}
