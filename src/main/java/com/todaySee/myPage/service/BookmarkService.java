package com.todaySee.myPage.service;

import com.todaySee.domain.Bookmark;
import com.todaySee.domain.Content;

import java.util.HashMap;
import java.util.List;

public interface BookmarkService {

    // 유저번호에 따른 즐겨찾기 리스트 가져오기
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber);

    // 즐겨찾기 번호에 따른 해당 즐겨찾기 상세정보
    public Bookmark getBookmark(Integer bookmarkNumber);

    // 유저번호와 즐겨찾기 번호에 따른 해당 즐겨찾기 내의 컨텐츠 가져오기
    public List<HashMap<String, String>> getBookmarkContentList(Integer userNumber, Integer bookmarkNumber);

    // 즐겨찾기 번호에 따른 해당 즐겨찾기 수정
    public void updateBookmark(Integer bookmarkNumber, String bookmarkName, Integer bookmarkState, Integer userNumber);

    // 즐겨찾기 번호에 따른 해당 즐겨찾기 삭제
    public void deleteBookmark(Integer bookmarkNumber, Integer userNumber);

    // 컨텐츠가 담긴 즐겨찾기 번호에 따른 즐겨찾기 삭제
    public void deleteBookmarkContent(String[] bookmarkList, Integer bookmarkNumber, Integer userNumber);

    // 컨텐츠가 담긴 즐겨찾기 번호에 따른 즐겨찾기 수정
    public void updateBookmarkContent(String[] bookmarkContentList, Integer bookmarkNumber, Integer userNumber);

}
