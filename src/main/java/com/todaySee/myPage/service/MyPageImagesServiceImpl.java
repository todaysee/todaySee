package com.todaySee.myPage.service;

import com.todaySee.domain.Images;
import com.todaySee.domain.User;
import com.todaySee.myPage.persistence.MyPageImgRepository;
import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageImagesServiceImpl implements MyPageImagesService{

    @Autowired
    MyPageRepository myPageRepository;

    public void updateProfileImageState(Integer userNumber){
        User user = myPageRepository.findById(userNumber).get();
        user.setUserProfileYn(2);
        myPageRepository.save(user);
    }

    public void updateProfileTitleImageState(Integer userNumber) {
        User user = myPageRepository.findById(userNumber).get();
        user.setUserTitleProfileYn(1);
        myPageRepository.save(user);
    }

}
