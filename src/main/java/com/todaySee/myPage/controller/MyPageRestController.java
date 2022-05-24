package com.todaySee.myPage.controller;




import com.todaySee.domain.User;
import com.todaySee.myPage.service.MyPageImagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MyPageRestController {

    @Autowired
    MyPageImagesService myPageImagesService;

    @PostMapping("/updateProfileImageAjax")
    public void updateProfileImage(Integer userNumber){
        System.out.println(userNumber+"이미지");
        myPageImagesService.updateProfileImageState(userNumber);
    }

    @PostMapping("/updateProfileTitleImageAjax")
    public void updateProfileTitleImage(Integer userNumber){
        System.out.println(userNumber+"타이틀이미지");
        myPageImagesService.updateProfileTitleImageState(userNumber);
    }


}
