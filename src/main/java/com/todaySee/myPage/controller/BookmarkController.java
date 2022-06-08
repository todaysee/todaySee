package com.todaySee.myPage.controller;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.Content;
import com.todaySee.domain.UserVO;
import com.todaySee.home.service.DetailsService;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.service.BookmarkService;
import com.todaySee.myPage.service.MyPageService;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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
    private DetailsService detailsService;

    @Autowired
    private BookmarkService bookmarkService;

    @GetMapping("/myPage/bookMark")
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

        /* 유저 번호에 따른 유저 닉네임 가져오기 */
        model.addAttribute("user", detailsService.getUser(userNumber));

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

        /* 유저 번호에 따른 유저 닉네임 가져오기 */
        model.addAttribute("user", detailsService.getUser(userNumber));

        /* 즐겨찾기 번호에 맞는 즐겨찾기 상세정보 가져오기 */
        model.addAttribute("bookmark", bookmarkService.getBookmark(bookmarkNumber));

        /* 즐겨찾기 번호와 유저 번호에 맞는 즐겨찾기에 담긴 컨텐츠 가져오기 */
        List<HashMap<String, String>> contentList = bookmarkService.getBookmarkContentList(userNumber, bookmarkNumber);
        model.addAttribute("contentList", contentList);

        /* 사용자의 즐겨찾기 모두 보여주기 - Modal 에서 사용 */
        List<HashMap<String, String>> bookmarkList = bookmarkService.getBookmarkList(userNumber);
        model.addAttribute("bookmarkList", bookmarkList);

        return "/myPage/myPageBookMark";
    }

    @PostMapping("/myPage/bookMark/{bookmarkNumber}")
    public String updateBookmark(@PathVariable Integer bookmarkNumber, String bookmarkName, Integer bookmarkState, HttpSession session) {
        /* 유저번호 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        bookmarkService.updateBookmark(bookmarkNumber, bookmarkName, bookmarkState, userNumber);
        return "redirect:/myPage/bookMark/"+bookmarkNumber;
    }

}
