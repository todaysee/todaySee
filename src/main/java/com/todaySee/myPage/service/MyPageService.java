package com.todaySee.myPage.service;

import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;

import java.util.List;

public interface MyPageService {
   //유저 정보 불러오기
   UserVO getUserInfo(UserVO user);

   //유저 닉네임 업데이트
   UserVO updateNickname(Integer userNumber, String userNickname);

   //리뷰 리스트
   List<Review> getReviewList(Integer userNumber);

}
