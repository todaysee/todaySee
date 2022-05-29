package com.todaySee.community.service;

import com.todaySee.community.persistence.CommunityGenreRepositroy;
import com.todaySee.community.persistence.CommunityOttRepositroy;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommunityServiceImpl implements CommunityService{

    @Autowired
    CommunityOttRepositroy communityOttRepositroy;

    @Autowired
    CommunityGenreRepositroy communityGenreRepositroy;

    @Override
    public List<Ott> getOttList(Ott ott) {
        return (List<Ott>)communityOttRepositroy.findAll();
    }

    @Override
    public List<Genre> getGenreList(Genre genre) {
        return (List<Genre>)communityGenreRepositroy.findAll();
    }
}

