package com.todaySee.myPage.controller;



import com.todaySee.domain.User;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.persistence.MyPageImgRepository;
import com.todaySee.myPage.service.MyPageImagesService;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class MyPageController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    MyPageImgRepository myPageImgRepository;



    /**마이페이지 프로필 화면
     * @return
     * 회원번호로 페이지를 동적생성함
     *
     */
    @GetMapping("/myPage/profile/{userNumber}")
    public String myPageProfile(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));


        return "/myPage/myPageProfile";
    }

   
    /**마이페이지 프로필 수정페이지로 이동
     * @return
     * 회원번호로 페이지를 동적생성함
     */
    @GetMapping("/myPage/update/{userNumber}")
    public String myPageUpdateUser(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));

        return "/myPage/myPageUpdateUser";
    }

    //마이페이지 나의 취향
    @GetMapping("/myPage/like/{userNumber}")
    public String myPageLike(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));


        return "/myPage/myPageLike";
    }

    //마이페이지 나의 커뮤니티 작성글 및 댓글 보기
    @GetMapping("/myPage/list/{userNumber}")
    public String mypageBoardCommnetsList(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));



        return "/myPage/mypageWriteBoardCommnetsList";
    }

    //마이페이지 작성 리뷰 목록
    @GetMapping("/myPage/review/{userNumber}")
    public String myPageBoard(@PathVariable Integer userNumber, User user, Model model)
    {
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));


        return "/myPage/myPageReviewList";
    }


    @GetMapping("/myPage/bookMarkList/{userNumber}")
    public String myPageBookMark(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));

        return "/myPage/myPageBookMarkList";
    }

    @GetMapping("/myPage/bookMark/{userNumber}")
    public String myPageBookMarkList(@PathVariable Integer userNumber, User user, Model model) {

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));

        return "/myPage/myPageBookMark";
    }


    @GetMapping("/myPage/modal")
    public String modal() {
        return "/myPage/test2";
    }

}
