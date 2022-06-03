package com.todaySee.myPage.service;

import com.todaySee.domain.Bookmark;

import java.util.List;

public interface BookmarkService {

    // 유저번호에 따른 즐겨찾기 리스트 가져오기
    public List<Bookmark> getBookmarkList(Integer userNumber);

}
