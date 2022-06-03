package com.todaySee.myPage.service;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.Content;

import java.util.HashMap;
import java.util.List;

public interface BookmarkService {

    // 유저번호에 따른 즐겨찾기 리스트 가져오기
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber);

    // 유저번호와 즐겨찾기 번호에 따른 컨텐츠 가져오기
    public List<HashMap<String, String>> getBookmark(Integer userNumber, Integer bookmarkNumber);

}
