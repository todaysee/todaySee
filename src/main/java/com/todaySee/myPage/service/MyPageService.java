package com.todaySee.myPage.service;

import com.todaySee.domain.Images;
import com.todaySee.domain.UserVO;
import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;

public interface MyPageService {
   //유저 정보 불러오기
   UserVO getUserInfo(UserVO user);

   //유저 닉네임 업데이트
   UserVO updateNickname(Integer userNumber, String userNickname);

}
