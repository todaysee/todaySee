package com.todaySee.myPage.service;

import com.todaySee.domain.UserVO;
import com.todaySee.persistence.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageImagesServiceImpl implements MyPageImagesService{

    @Autowired
    UserRepository userRepository;

    public void updateProfileImageState(Integer userNumber){
        UserVO user = userRepository.findById(userNumber).get();
        user.setUserProfileYn(1);
        userRepository.save(user);
    }

    public void updateProfileTitleImageState(Integer userNumber) {
        UserVO user = userRepository.findById(userNumber).get();
        user.setUserTitleProfileYn(1);
        userRepository.save(user);
    }

}
