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

import org.springframework.web.bind.annotation.*;

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
     * @param userNumber : 해당 리뷰를 쓴 유저 번호
     * @param reviewContent : 리뷰 내용
     * @param reviewSpoiler : 스포일러 여부 (스포일러체크하면 1, 체크안하면 0)
     * @param contentNumber : 해당 리뷰를 쓴 컨텐츠 번호
     * @return String 호출한 AJAX쪽으로 보낼 데이터
     */
    @PostMapping("/details/reviewAjax")
    public String getReview(Integer userNumber, String reviewContent, Integer reviewSpoiler, Integer contentNumber, float reviewRating) {
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
//        System.out.println(reviewReportContent);
        detailsService.insertReviewReport(reviewReportContent, reportReviewNumber);
        return "ok";
    }

    @PostMapping("/details/bookmarkInsert")
    public JSONArray insertBookmark(String bookmarkName) {
        /* 유저 번호는 세션처리해야함 */
        Integer userNumber = 1;
        detailsService.insertBookmark(bookmarkName, userNumber);

        JSONArray array = new JSONArray();

        List<HashMap<String, String>> list = detailsService.getBookmarkList(userNumber);
        for(HashMap<String, String> map : list) {
            JSONObject obj = new JSONObject(map);
            array.add(obj);
        }

        return array;
    }

}

