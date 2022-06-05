package com.todaySee.myPage.controller;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.Content;
import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.service.BookmarkService;
import com.todaySee.myPage.service.MyPageService;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
public class BookmarkController {

    @Autowired
    private MyPageService myPageService;

    @Autowired
    private ImagesRepository myPageImgRepository;

    @Autowired
    private BookmarkService bookmarkService;

  //  @GetMapping("/myPage/bookMark")
    public String myPageBookMarkList(HttpSession session, UserVO user, Model model) {

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
        List<HashMap<String, String>> list = bookmarkService.getBookmarkList(userNumber);
        model.addAttribute("bookmarkList", list);

        return "/myPage/myPageBookMarkList";
    }

    @GetMapping("/myPage/bookMark/{bookmarkNumber}")
    public String myPageBookMark(HttpSession session, UserVO user, Model model, @PathVariable Integer bookmarkNumber) {

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

        /* 즐겨찾기 번호와 유저 번호에 맞는 즐겨찾기에 담긴 컨텐츠 가져오기 */
        List<HashMap<String, String>> list = bookmarkService.getBookmark(userNumber, bookmarkNumber);
        model.addAttribute("contentList", list);

        return "/myPage/myPageBookMark";
    }

}
