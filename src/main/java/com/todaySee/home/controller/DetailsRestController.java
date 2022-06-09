package com.todaySee.home.controller;

import com.todaySee.domain.Content;

import com.todaySee.home.dto.ReviewDto;
import com.todaySee.home.service.DetailsService;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;


@RestController
@RequiredArgsConstructor
public class DetailsRestController {

    @Autowired
    private DetailsService detailsService;

    /**
     * 영상 상세 페이지 유튜브 링크 가져오기
     * @param contentNumber : 영상 번호
     * @return youtubeURL : (AJAX이므로 데이터 형태로 보내기) -> 유튜브 링크 URL
     */
    @GetMapping("/details/Ajax")
    public String getContentGenre(Integer contentNumber) {
        Content contentVO = detailsService.getContentById(contentNumber);
        String youtubeURL = contentVO.getContentYoutubeUrl();
        System.out.println("유튜브 링크 =>"+youtubeURL);
        return youtubeURL;
    }

    /**
     * 작성한 리뷰를 DB에 INSERT
     * @param reviewContent : 리뷰 내용
     * @param reviewSpoiler : 스포일러 여부 (스포일러체크하면 1, 체크안하면 0)
     * @param contentNumber : 해당 리뷰를 쓴 컨텐츠 번호
     * @return String 호출한 AJAX쪽으로 보낼 데이터
     */
    @PostMapping("/details/reviewAjax")
    public String getReview(HttpSession session, String reviewContent, Integer reviewSpoiler, Integer contentNumber, float reviewRating) {
        Integer userNumber = (Integer) session.getAttribute("userNumber");
        detailsService.insertReview(userNumber, reviewContent, reviewSpoiler, contentNumber, reviewRating);
        return "OK";
    }

    /**
     * 리뷰 번호에 따른 리뷰 정보 가져오기
     * @param reviewNumber
     * @return Service에서 받아온 JSON을 View으로 보내줌
     */
    @GetMapping("/details/spoReviewAjax")
    public JSONObject getSpoilerReview(Integer reviewNumber) {
        return detailsService.getReview(reviewNumber);
    }

    /**
     * 리뷰 신고 Modal안에서 신고 등록 버튼을 클릭 시 호출
     * 해당 리뷰 신고 INSERT
     * @param reviewReportContent : 신고 내용
     * @param reportReviewNumber : 신고하는 리뷰의 번호
     * @return String : 성공 여부
     */
    @PostMapping("/details/reportInsert")
    public String insertReviewReport(String reviewReportContent, Integer reportReviewNumber) {
        detailsService.insertReviewReport(reviewReportContent, reportReviewNumber);
        return "ok";
    }

    /**
     * 즐겨찾기 Modal 안의 즐겨찾기 추가할 경우 호출
     * @param bookmarkName : 즐겨찾기 이름
     * @param session : 유저 번호를 불러오기 위한 세션
     * @return JSONArray : AJAX 로 즐겨찾기 리스트 값들을 리턴
     */
    @PostMapping("/details/bookmarkInsert")
    public JSONArray insertBookmark(String bookmarkName, HttpSession session) {

        Integer userNumber = (Integer) session.getAttribute("userNumber");

        detailsService.insertBookmark(bookmarkName, userNumber, null); /* insert */

        JSONArray array = new JSONArray(); /* AJAX 로 리턴하기 위한 값 */

        List<HashMap<String, String>> list = detailsService.getBookmarkList(userNumber);
        for(HashMap<String, String> map : list) {
            JSONObject obj = new JSONObject(map);
            array.add(obj);
        }

        return array;
    }

    /**
     * 즐겨찾기에 영상 번호에 따른 영상 추가
     * @param contentNumber : 영상 번호
     * @param bookmarkName : 즐겨찾기 이름
     * @param session : 유저 번호가 담긴 세션
     * @return
     */
    @PostMapping("/details/bookmarkContentInsert")
    public String insertBookmarkContent(Integer contentNumber, String bookmarkName, HttpSession session) {
        Integer userNumber = (Integer) session.getAttribute("userNumber");
        detailsService.insertBookmark(bookmarkName, userNumber, contentNumber);
        return null;
    }

    /**
     * 리뷰의 좋아요를 클릭할 경우 숫자 증가하고, 해당 리뷰의 좋아요 수를 불러오기
     * @param reviewNumber : 리뷰 번호
     * @return JSONObject : 리뷰 좋아요 수를 AJAX 로 돌려보내기
     */
    @PostMapping("/details/reviewLikeUp")
    public JSONObject reviewLikeUp(Integer reviewNumber) {
        JSONObject obj = detailsService.updateReviewLikeUp(reviewNumber);
        return obj;
    }

    /**
     * 리뷰 번호에 따른 해당 리뷰 삭제
     * @param reviewNumber : 리뷰 번호
     * @return
     */
    @PostMapping("/details/reviewDelete")
    public String reviewDelete(Integer reviewNumber) {
        detailsService.reviewDelete(reviewNumber);
        return "";
    }

}

