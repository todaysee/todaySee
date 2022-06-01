package com.todaySee.myPage.controller;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.persistence.ImagesRepository;
import com.todaySee.myPage.service.MyPageImagesService;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@Controller
public class MyPageController {

    @Autowired
    MyPageService myPageService;

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    ImagesRepository myPageImgRepository;

    /**
     * 마이페이지 프로필 화면
     *
     * @return 회원번호로 페이지를 동적생성함
     */
    @GetMapping("/myPage/profile")
    public String myPageProfile(HttpSession session, UserVO user, Model model) {

        System.out.println("테스트 세션 : "+session.getAttribute("userNumber"));
        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageProfile";
    }


    /**
     * 마이페이지 프로필 수정페이지로 이동
     *
     * @return 회원번호로 페이지를 동적생성함
     */
    @GetMapping("/myPage/update")
    public String myPageUpdateUser(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageUpdateUser";
    }

    //마이페이지 나의 취향
    @GetMapping("/myPage/like")
    public String myPageLike(HttpSession session, UserVO user, Model model){

       user.setUserNumber((Integer) session.getAttribute("userNumber"));

        //리스트 담기
        List<HashMap<String, Object>> list = myPageService.chartReviewRating((Integer) session.getAttribute("userNumber"));//서비스 리턴
        Gson chartReviewGson = new Gson();
        JsonArray chartReviewJArray = new JsonArray();

        Iterator<HashMap<String, Object>> chartReviewIterator = list.iterator();
        while (chartReviewIterator.hasNext()) {
            HashMap chartReview = chartReviewIterator.next();
            JsonObject object = new JsonObject();
            Integer chartReviewChartCount = Integer.parseInt(String.valueOf(chartReview.get("ratingCount")));
            String chartReviewNum = String.valueOf(chartReview.get("rating"));

            object.addProperty("chartReviewChartCount", chartReviewChartCount);
            object.addProperty("chartReviewNum", chartReviewNum);
            chartReviewJArray.add(object);
        }

        String chartReviewJson = chartReviewGson.toJson(chartReviewJArray);
        model.addAttribute("chartReview", chartReviewJson);
        System.out.println(model.addAttribute("chartReview", chartReviewJson));


        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));


        return "/myPage/myPageLike";
    }

    //마이페이지 나의 커뮤니티 작성글 및 댓글 보기
    @GetMapping("/myPage/list")
    public String mypageBoardCommnetsList(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        model.addAttribute("userBoardList", myPageService.getUserBoardList((Integer) session.getAttribute("userNumber")));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));


        return "/myPage/mypageWriteBoardCommnetsList";
    }

    //마이페이지 작성 리뷰 목록
    @GetMapping("/myPage/review")
    public String myPageBoard(HttpSession session, UserVO user, Model model) {
        user.setUserNumber((Integer) session.getAttribute("userNumber")); // 세션 가져오기

        List<Review> reviewList = myPageService.getReviewList((Integer) session.getAttribute("userNumber"));
        model.addAttribute("reviewList", reviewList);

        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageReviewList";
    }


    @GetMapping("/myPage/bookMarkList")
    public String myPageBookMark(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageBookMarkList";
    }

    @GetMapping("/myPage/bookMark")
    public String myPageBookMarkList(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageBookMark";
    }

    @PostMapping("/myPage/update")
    public void updateUserNickname(Integer userNumber, @RequestParam String userNickname) {

        System.out.println(userNumber + ":" + userNickname);
        myPageService.updateNickname(userNumber,userNickname);

    }

    @GetMapping("/myPage/modal")
    public String modal() {
        return "/myPage/test2";
    }

    @GetMapping("/myPage/test")
    public String test(HttpSession session, Model model) {

        model.addAttribute("userBoardList", myPageService.getUserBoardList((Integer) session.getAttribute("userNumber")));


        return "/myPage/test";
    }

}


