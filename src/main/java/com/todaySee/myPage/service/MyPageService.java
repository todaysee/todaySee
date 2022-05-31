package com.todaySee.myPage.service;

import com.todaySee.domain.Community;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.dto.CommunityDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;

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

}
