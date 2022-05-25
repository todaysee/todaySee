package com.todaySee.myPage.service;

import com.todaySee.domain.Images;
import com.todaySee.domain.User;
import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;

public interface MyPageService {
   //유저 정보 불러오기
   User getUserInfo(User user);

}
