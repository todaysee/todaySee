package com.todaySee.myPage.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.todaySee.domain.Community;
import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.dto.CommunityDto;

public interface MyPageService {
   //유저 정보 불러오기
   UserVO getUserInfo(UserVO user);

   //유저 닉네임 업데이트
   UserVO updateNickname(Integer userNumber, String userNickname);

   //리뷰 리스트
   List<Review> getReviewList(Integer userNumber);

   //마이페이지 게시글 목록 페이징
   Page<CommunityDto> boardPages(Pageable pageable);

   //마이페이지 작성글 목록 보여주기
   List<Community> getUserBoardList(Integer userNumber);

   //마이페이지 평점 차트 보기
   public List<HashMap<String, Object>> chartReviewRating(Integer userNumber);

   //마이페이지 평점 기입 한거 카테고리 워드클라우드
   public List<HashMap<String, Object>> reviewRatingCategoryWordCloud(Integer userNumber);

   //리뷰 카운트
   public Integer reviewCount(Integer userNumber);

   //커뮤니티 작성글 카운트
   public Integer communityCount(Integer userNumber);

   //받은 리뷰 좋아요 수
   public Integer userReviewLikeSum(Integer userNumber);
   
   // 마이페이지 나의 취향 추천 영상
   public List<Content> userPreference(Integer userNumber);

}
