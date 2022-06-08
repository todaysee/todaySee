package com.todaySee.home.service;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.home.dto.ReviewDto;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.HashMap;
import java.util.List;

public interface DetailsService {

    // 유저번호에 따른 유저 정보 가져오기
    public UserVO getUser(Integer userNumber);

    // ID(PK)값에 따른 Content 상세정보
    public Content getContentById(Integer contentNumber);

    // ID(PK)값에 따른 genre 가져오기
    public List<String> getContentGenre(Integer contentNumber);

    // ID(PK)값에 따른 ott 가져오기
    public List<HashMap<String, String>> getContentOtt(Integer contentNumber);

    // 컨텐츠 번호에 따른 리뷰 받아오기
    public List<HashMap<String, String>> getReviewList(Integer contentNumber);

    // 리뷰 정보를 DB에 저장
    public void insertReview(Integer userNumber, String reviewContent, Integer reviewSpoiler, Integer contentNumber, float reviewRating);

    // 리뷰 번호에 따른 리뷰
    public JSONObject getReview(Integer reviewNumber);

    // 리뷰 신고 입력
    public void insertReviewReport(String reviewReportContent, Integer reportReviewNumber);

    // 유저 번호에 따른 즐겨찾기 가져오기
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber);

    // 즐겨찾기 추가
    public void insertBookmark(String bookmarkName, Integer userNumber, Integer contentNumber);

    // 리뷰 마음에들어요(좋아요) 증가
    public JSONObject updateReviewLikeUp(Integer reviewNumber);

    // 리뷰 삭제
    public void reviewDelete(Integer reviewNumber);

}
