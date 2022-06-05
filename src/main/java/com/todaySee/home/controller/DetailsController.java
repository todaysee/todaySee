
package com.todaySee.home.controller;

import com.todaySee.domain.Content;
import com.todaySee.domain.Images;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.home.service.DetailsService;
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

    /**
     * 컨텐츠 번호에 따른 영화 상세 페이지
     * @param contentNumber : 컨텐츠 번호
     * @param model : 화면으로 값 전달
     * @return "/home/homeDetails" : RESTful이 아닌 본래 View링크
     */
    @GetMapping("/{contentNumber}")
    public String getContentById(@PathVariable Integer contentNumber, Model model, HttpSession session) {
        System.out.println("===============================> 컨텐츠 번호 : " + contentNumber);

        /* 세션을 통해 유저 번호 가져오기 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        /* 유저 닉네임 가져오기 */
        UserVO user = detailsService.getUser(userNumber);
        model.addAttribute("user", user);

        /* 컨텐츠 상세 내용 가져오기 */
        Content contentVO = detailsService.getContentById(contentNumber);
        model.addAttribute("content", contentVO);

        /* 컨텐츠 장르 가져오기 */
        List<String> genre = detailsService.getContentGenre(contentNumber);
        model.addAttribute("Genre", genre);

        /* 컨텐츠 플랫폼 가져오기 */
        List<HashMap<String, String>> ottList = detailsService.getContentOtt(contentNumber);
        model.addAttribute("ottList", ottList);

        /* 리뷰 데이터 모두 가져오기 */
        List<HashMap<String, String>> reviewList = detailsService.getReviewList(contentNumber);
        System.out.println(reviewList);
        model.addAttribute("reviewList", reviewList);

        /* 즐겨찾기 불러오기 */
        List<HashMap<String, String>> bookmarkList = detailsService.getBookmarkList(userNumber);
        model.addAttribute("bookmarkList", bookmarkList);

       return "/home/homeDetails";
    }

}

