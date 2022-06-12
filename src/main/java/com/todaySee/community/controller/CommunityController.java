package com.todaySee.community.controller;


import com.todaySee.community.service.CommunityService;
import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.persistence.ImagesRepository;
import com.todaySee.myPage.service.MyPageImagesService;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

@Controller
public class CommunityController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    ImagesRepository myPageImgRepository;

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

        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/community/communityIndex";
    }
    //카테고리 별 게시판 페이지
    @GetMapping("/community/{categoryName}")
    public String communityBoardPage(HttpSession session, UserVO user, Model model, @PathVariable String categoryName){

        //카테고리 패스 저장
        model.addAttribute("category", categoryName);

        /* 작성 글 가져오기 */
        List<HashMap<String, String>> communityBoardList = communityService.getCommunityBoardList(categoryName);
        model.addAttribute("communityBoardList", communityBoardList);


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

    //게시글 작성
    @PostMapping("/communityBoardSave")
    public String communityOttBoardSave(Integer userNumber, String communityCategory, String communityContent, String fileNameText) throws UnsupportedEncodingException {

        //한글 파라메터를 인코딩
        String encodedParam = URLEncoder.encode(communityCategory, "UTF-8");
        communityService.communityOttBoardSave(userNumber, communityCategory, communityContent, fileNameText);
        System.out.println("작성한 카테고리 : "+communityCategory);
        //리다이렉트시 한글을 인식하지 못하는 오류 발생함 
        //해결을 위해서 받은 인자를 URLEncoder로 인코딩
        return "redirect:/community/"+encodedParam;
    }
    

}
