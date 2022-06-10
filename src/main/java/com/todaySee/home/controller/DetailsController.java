
package com.todaySee.home.controller;

import com.todaySee.domain.Content;
import com.todaySee.domain.Images;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.home.service.DetailsService;
import com.todaySee.home.service.HomeService;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/details")
public class DetailsController {

    @Autowired
    private DetailsService detailsService;

    @Autowired
    private HomeService homeService;

    @Autowired
    private ImagesRepository myPageImgRepository;

    /**
     * 컨텐츠 번호에 따른 영화 상세 페이지
     * @param contentNumber : 컨텐츠 번호
     * @param model : 화면으로 값 전달
     * @return "/home/homeDetails" : RESTful이 아닌 본래 View링크
     */
    @GetMapping("/{contentNumber}")
    public String getContentById(@PathVariable Integer contentNumber, Model model, HttpSession session) {
        System.out.println("===============================> 컨텐츠 번호 : " + contentNumber);

        /* 유저번호 세션 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        if(userNumber != null) {
            /* 유저 닉네임 가져오기 */
            UserVO user = detailsService.getUser(userNumber);
            model.addAttribute("user", user);

            /* 즐겨찾기 불러오기 */
            List<HashMap<String, String>> bookmarkList = detailsService.getBookmarkList(userNumber);
            model.addAttribute("bookmarkList", bookmarkList);

            // 파이썬 소켓 연결 유무
            if(!homeService.recommendedContentList(userNumber).isEmpty()) {
                // 연결이 되어 있을 때 사용자 추천 콘텐츠 출력
                model.addAttribute("RecommendedContentList",homeService.recommendedContentList(userNumber));
            }else {
                // 연결이 안됐으면 랜덤 영상 10개 출력
                model.addAttribute("RecommendedContentList",homeService.mainContentList());
            }

            MyPageImages myPageImages = new MyPageImages();
            List<Object[]> profileImages = myPageImgRepository.profileImages(userNumber);
            model.addAttribute("profileImages", myPageImages.profileImages(profileImages));
        }

        /* 컨텐츠 상세 내용 가져오기 */
        Content contentVO = detailsService.getContentById(contentNumber);
        model.addAttribute("content", contentVO);

        /* 컨텐츠 장르 가져오기 */
        List<HashMap<String, String>> genreList = detailsService.getContentGenre(contentNumber);
        model.addAttribute("genreList", genreList);

        /* 컨텐츠 플랫폼 가져오기 */
        List<HashMap<String, String>> ottList = detailsService.getContentOtt(contentNumber);
        model.addAttribute("ottList", ottList);

        /* 리뷰 데이터 모두 가져오기 */
        List<HashMap<String, String>> reviewList = detailsService.getReviewList(contentNumber);
        model.addAttribute("reviewList", reviewList);

       return "/home/homeDetails";
    }

}

