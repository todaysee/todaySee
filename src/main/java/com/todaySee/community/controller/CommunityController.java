package com.todaySee.community.controller;


import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.persistence.MyPageImgRepository;
import com.todaySee.myPage.service.MyPageImagesService;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CommunityController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    MyPageImgRepository myPageImgRepository;

    //커뮤니티 메인 페이지
    @GetMapping("/community/{userNumber}")
    public String community(@PathVariable Integer userNumber, UserVO user, Model model){

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages(userNumber);
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/community/communityIndex";
    }
    //커뮤니티 글쓰기 페이지
    @GetMapping("/communityWrite")
    public String communityWrite(){
        return "/community/communityWrite";
    }

   

}
