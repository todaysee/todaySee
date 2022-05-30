package com.todaySee.myPage.controller;




import com.todaySee.dto.CommunityDto;
import com.todaySee.myPage.service.MyPageImagesService;
import com.todaySee.myPage.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyPageRestController {

    @Autowired
    MyPageImagesService myPageImagesService;

    @Autowired
    MyPageService myPageService;

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

    @GetMapping("/ajaxBoardPaging")
    public Page<CommunityDto> ajaxBoardPaging(Pageable pageable, Integer userNumber) {

        return myPageService.boardPages(pageable, userNumber);
    }



}
