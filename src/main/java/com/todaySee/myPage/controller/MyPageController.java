package com.todaySee.myPage.controller;



import com.todaySee.domain.Images;
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

import java.util.ArrayList;
import java.util.Date;
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
        System.out.println("====================> 마이페이지 프로필페이지 유저 번호 : " + userNumber);
        /*유저정보 가져오기*/
        model.addAttribute("user", myPageService.getUserInfo(user));

        /*유저 배경 이미지 가져오기
        * MyPageImages 이미지 가져오는 클래스
        * */
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
        System.out.println("====================> 마이페이지 프로필 수정페이지 유저 번호 : " + userNumber);
        //DB값읽어와서 페이지로 전잘
        model.addAttribute("user", myPageService.getUserInfo(user));

        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages",myPageImages.profileImages(profileImages));

        return "/myPage/myPageUpdateUser";
    }

    //마이페이지 나의 취향
    @GetMapping("/myPage/like/{userNumber}")
    public String myPageLike(@PathVariable Integer userNumber, Model model) {

        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));

        return "/myPage/myPageLike";
    }

    //마이페이지 나의 커뮤니티 작성글 및 댓글 보기
    @GetMapping("/myPage/list/{userNumber}")
    public String mypageBoardCommnetsList(@PathVariable Integer userNumber, Model model) {

        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));


        return "/myPage/mypageWriteBoardCommnetsList";
    }

    //마이페이지 작성 리뷰 목록
    @GetMapping("/myPage/review/{userNumber}")
    public String myPageBoard(@PathVariable Integer userNumber, Model model)
    {
        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));

        return "/myPage/myPageReviewList";
    }


    @GetMapping("/myPage/bookMark/{userNumber}")
    public String myPageBookMark(@PathVariable Integer userNumber, Model model) {

        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));

        return "/myPage/myPageBookMark";
    }

    @GetMapping("/myPage/bookMark/list/{userNumber}")
    public String myPageBookMarkList(@PathVariable Integer userNumber, Model model) {

        /*유저 배경 이미지 가져오기
         * MyPageImages 이미지 가져오는 클래스
         * */
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages",myPageImages.tittleImages(tittleImages));

        return "/myPage/myPageBookMarkList";
    }





    @GetMapping("/myPage/modal")
    public String modal() {
        return "/myPage/test2";
    }

}
