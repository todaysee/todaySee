package com.todaySee.myPage.service;

import com.todaySee.domain.Images;
import com.todaySee.domain.UserVO;

public interface MyPageImagesService {

    void updateProfileImageState(Integer userNumber);

    void updateProfileTitleImageState(Integer userNumber);
}
