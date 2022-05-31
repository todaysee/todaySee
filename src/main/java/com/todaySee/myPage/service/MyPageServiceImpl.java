package com.todaySee.myPage.service;

import com.todaySee.Converter.CommunityConverter;
import com.todaySee.domain.Community;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import com.todaySee.dto.CommunityDto;
import com.todaySee.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class MyPageServiceImpl implements MyPageService{

    @Autowired
    UserRepository userRepository;

    @Autowired
    ReviewRepository reviewRepository;

    @Autowired
    ReviewJpaRepository reviewJpaRepository;

    @Autowired
    CommunityRepositroy communityRepositroy;

    @Autowired
    CommunityJpaRepositroy communityJpaRepositroy;
    
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
        return reviewJpaRepository.findByUserOrderByReviewDateDesc(userRepository.findById(userNumber).get());
    }

    @Override
    public Page<CommunityDto> boardPages(Pageable pageable) {
        Page<Community> communities = communityJpaRepositroy.findAll(pageable);

        Page<CommunityDto> communityDtos = communities.map(entity -> {
            CommunityDto communityDto = CommunityConverter.communityToCommunityDto(entity);
            return communityDto;
        });

        return communityDtos;
    }

    @Override
    public List<Community> getUserBoardList(Integer userNumber) {
        return communityRepositroy.findByUser_UserNumberOrderByCommunityDateDesc(userNumber);
    }

    @Override
    public List<HashMap<String, Object>> chartReviewRating(Integer userNumber) {
        List<HashMap<String, Object>> rList = new ArrayList<HashMap<String,Object>>();

        for(Object[] o : reviewRepository.chartReviewRating(userNumber)) {
            HashMap<String, Object> hm = new HashMap<String, Object>();
            hm.put("ratingCount",o[0]);
            hm.put("rating",o[1]);
            rList.add(hm);
        }

        return rList ;
    }

}
