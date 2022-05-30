package com.todaySee.myPage.service;

import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.persistence.ReviewRepository;
import com.todaySee.persistence.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyPageServiceImpl implements MyPageService{

    @Autowired
    UserRepository userRepository;

    @Autowired
    ReviewRepository reviewRepository;
    
    @Override
    public UserVO getUserInfo(UserVO user) {
        //JPA 조건문을 이용하여 DB검색함
        return userRepository.findById(user.getUserNumber()).get();
    }

    @Override
    public UserVO updateNickname(Integer userNumber, String userNickname) {
        UserVO user = userRepository.findById(userNumber).get();
        user.setUserNickname(userNickname);
        return userRepository.save(user);
    }

    @Override
    public List<Review> getReviewList(Integer userNumber) {
        return reviewRepository.findByUserOrderByReviewDateDesc(userRepository.findById(userNumber).get());
    }

}
