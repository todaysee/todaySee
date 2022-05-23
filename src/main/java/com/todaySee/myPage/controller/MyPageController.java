package com.todaySee.myPage.controller;



import com.todaySee.domain.User;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

    @Autowired
    MyPageService myPageService;
    
    /**마이페이지 프로필 화면
     * @return
     * 회원번호로 페이지를 동적생성함
     */
    @GetMapping("/myPage/profile/{user_number}")
    public String myPageProfile(User user, Model model) {
        
        //DB값읽어와서 페이지로 전잘
        model.addAttribute("user", myPageService.getUserInfo(user));

        return "/myPage/myPageProfile";
    }

   
    /**마이페이지 프로필 수정페이지로 이동
     * @return
     * 회원번호로 페이지를 동적생성함
     */
    @GetMapping("/myPage/update/{user_number}")
    public String myPageUpdateUser(User user, Model model) {

        //DB값읽어와서 페이지로 전잘
        model.addAttribute("user", myPageService.getUserInfo(user));

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
