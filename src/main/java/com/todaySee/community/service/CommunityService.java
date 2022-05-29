package com.todaySee.community.service;

import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;

import java.util.List;

public interface CommunityService {

    List<Ott> getOttList(Ott ott);

    List<Genre> getGenreList(Genre genre);

}
