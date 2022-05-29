package com.todaySee.community.controller;


import com.todaySee.community.service.CommunityService;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
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

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommunityController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    MyPageImgRepository myPageImgRepository;

    @Autowired
    CommunityService communityService;

    //커뮤니티 메인 페이지
    @GetMapping("/community")
    public String community(HttpSession session, UserVO user, Model model){

        //ott 게시판 리스트
        Ott ott = new Ott();
        List<Ott> ottList = communityService.getOttList(ott);
        model.addAttribute("ottList", ottList);
        //genre 게시판 리스트
        Genre genre = new Genre();
        List<Genre> genreList = communityService.getGenreList(genre);
        model.addAttribute("genreList", genreList);

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/community/communityIndex";
    }
    //ott 카테고리 게시판 페이지
    @GetMapping("/communityOttBoard/{ottNumber}")
    public String communityOttBoardPage(HttpSession session, UserVO user, Model model){


        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/community/communityWrite";
    }

    //genre 카테고리 게시판 페이지
    @GetMapping("/communityGenreBoard/{genreNumber}")
    public String communityGenreBoardPage(HttpSession session, UserVO user, Model model){

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/community/communityWrite";
    }


}
