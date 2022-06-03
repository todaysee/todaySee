package com.todaySee.myPage.controller;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.service.BookmarkService;
import com.todaySee.myPage.service.MyPageService;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookmarkController {

    @Autowired
    private MyPageService myPageService;

    @Autowired
    private ImagesRepository myPageImgRepository;

    @Autowired
    private BookmarkService bookmarkService;

    @GetMapping("/myPage/bookMark")
    public String myPageBookMark(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        /************************************* 권소연 추가 *****************************************************?

        /* 유저번호 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        /* 사용자의 즐겨찾기 불러오기 */
        List<Bookmark> bookmarkList = bookmarkService.getBookmarkList(userNumber);
        model.addAttribute("bookmarkList", bookmarkList);

        return "/myPage/myPageBookMarkList";
    }

    @GetMapping("/myPage/bookMark/{bookmarkNumber}")
    public String myPageBookMarkList(HttpSession session, UserVO user, Model model) {

        user.setUserNumber((Integer) session.getAttribute("userNumber"));
        //마이페이지 회원정보 불러오기, 이미지 불러오기
        model.addAttribute("user", myPageService.getUserInfo(user));
        MyPageImages myPageImages = new MyPageImages();
        List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
        List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

        return "/myPage/myPageBookMark";
    }

}
