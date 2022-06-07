package com.todaySee.myPage.controller;

import com.todaySee.myPage.service.BookmarkService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
@RequiredArgsConstructor
public class BookmarkRestController {

    @Autowired
    private BookmarkService bookmarkService;

    @PostMapping("/myPage/bookMarkDelete")
    public String deleteBookmark(Integer bookmarkNumber, HttpSession session) {
        /* 유저번호 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        bookmarkService.deleteBookmark(bookmarkNumber, userNumber);

        return null;
    }

    @PostMapping("/myPage/bookMarkDeleteContent")
    public String deleteBookmarkContent(HttpServletRequest request, Integer bookmarkNumber, HttpSession session) {
        /* 유저 번호 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        String[] bookmarkList = request.getParameterValues("contentList");
        bookmarkService.deleteBookmarkContent(bookmarkList, bookmarkNumber, userNumber);

        return "";
    }

    @PostMapping("/myPage/bookMarkUpdateContent")
    public String updateBookmarkContent(HttpServletRequest request, Integer bookmarkNumber, HttpSession session) {
        /* 유저 번호 */
        Integer userNumber = (Integer) session.getAttribute("userNumber");

        String[] bookmarkContentList = request.getParameterValues("bookmarkContentNumber");
        bookmarkService.updateBookmarkContent(bookmarkContentList, bookmarkNumber, userNumber);
        return "";
    }


}
