package com.todaySee.community.service;

import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;

import java.util.HashMap;
import java.util.List;

public interface CommunityService {

    List<Ott> getOttList(Ott ott);

    List<Genre> getGenreList(Genre genre);

    void communityOttBoardSave(Integer userNumber, String communityCategory, String communityContent);

    List<Community> getCommunityBoardList(String communityCategory);
}
