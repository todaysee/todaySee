package com.todaySee.community.service;

import com.todaySee.persistence.GenreRepositroy;
import com.todaySee.persistence.CommunityRepositroy;
import com.todaySee.persistence.UserRepository;
import com.todaySee.persistence.OttRepositroy;
import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class CommunityServiceImpl implements CommunityService{

    @Autowired
    OttRepositroy ottRepositroy;

    @Autowired
    GenreRepositroy genreRepositroy;

    @Autowired
    CommunityRepositroy communityRepositroy;

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<Ott> getOttList(Ott ott) {
        return (List<Ott>)ottRepositroy.findAll();
    }

    @Override
    public List<Genre> getGenreList(Genre genre) {
        return (List<Genre>)genreRepositroy.findAll();
    }

    @Override
    public void communityOttBoardSave(Integer userNumber, String communityCategory, String communityContent) {

        Date day = new Date();
        Community community = new Community();
        community.setUser(userRepository.findById(userNumber).get());
        community.setCommunityCategory(communityCategory);
        community.setCommunityContent(communityContent);
        community.setCommunityState(1);
        community.setCommunityDate(day);

        communityRepositroy.save(community);
    }

    @Override
    public List<Community> getCommunityBoardList(String communityCategory) {

        return communityRepositroy.findByCommunityCategoryOrderByCommunityDateDesc(communityCategory);
    }
}

