package com.todaySee.myPage.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {


    
    //마이페이지 프로필 화면
    @GetMapping("/myPage/profile")
    public String myPageProfile() {
        return "/myPage/myPageProfile";
    }
    
    //마이페이지 프로필 수정
    @GetMapping("/myPage/update")
    public String myPageUpdateUser(Model m) {
        return "/myPage/myPageUpdateUser";
    }

    //마이페이지 나의 취향
    @GetMapping("/myPage/like")
    public String myPageLike(Model m) {
        return "/myPage/myPageLike";
    }

    //마이페이지 나의 커뮤니티 작성글 및 댓글 보기
    @GetMapping("/myPage/list")
    public String mypageBoardCommnetsList() {
        return "/myPage/mypageWriteBoardCommnetsList";
    }

    //마이페이지 작성 리뷰 목록
    @GetMapping("/myPage/review")
    public String myPageBoard(Model m) {
        return "/myPage/myPageReviewList";
    }
    
    
    
    
    
    
    
    



    @GetMapping("/myPage/bookMark")
    public String myPageBookMark(Model m) {
        return "/myPage/myPageBookMark";
    }

    @GetMapping("/myPage/bookMark/list")
    public String myPageBookMarkList(Model m) {
        return "/myPage/myPageBookMarkList";
    }





    @GetMapping("/myPage/modal")
    public String modal() {
        return "/myPage/test2";
    }

}
