package com.todaySee.community.service;

import com.todaySee.domain.Comments;
import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import com.todaySee.domain.UserVO;

import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;

public interface CommunityService {

    List<Ott> getOttList(Ott ott);

    List<Genre> getGenreList(Genre genre);

    void communityOttBoardSave(Integer userNumber, String communityCategory, String communityContent);

    List<Community> getCommunityBoardList(String communityCategory);

    void saveImagesFiles(MultipartFile files);
    
    Community communityCommentsInsert(String commentsContent, Integer userNumber, Integer communityNumber);
}
