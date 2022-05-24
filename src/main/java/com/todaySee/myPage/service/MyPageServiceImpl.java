package com.todaySee.myPage.service;

import com.todaySee.domain.User;
import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageServiceImpl implements MyPageService{

    @Autowired
    MyPageRepository myPageRepository;
    
    @Override
    public User getUserInfo(User user) {
        //JPA 조건문을 이용하여 DB검색함
        return myPageRepository.findById(user.getUserNumber()).get();
    }

}
