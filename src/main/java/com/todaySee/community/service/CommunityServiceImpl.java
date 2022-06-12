package com.todaySee.community.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import com.todaySee.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.todaySee.domain.Comments;
import com.todaySee.domain.Community;
import com.todaySee.domain.Content;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import com.todaySee.domain.UserVO;

@Service
public class CommunityServiceImpl implements CommunityService{

    @Autowired
    OttRepositroy ottRepositroy;

    @Autowired
    GenreRepositroy genreRepositroy;

    @Autowired
    CommunityRepositroy communityRepositroy;
    
    @Autowired
    CommentsRepository commentsRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ImagesRepository imagesRepository;

    @Override
    public List<Ott> getOttList(Ott ott) {
        return (List<Ott>)ottRepositroy.findAll();
    }

    @Override
    public List<Genre> getGenreList(Genre genre) {
        return (List<Genre>)genreRepositroy.findAll();
    }

    @Override
    public void communityOttBoardSave(Integer userNumber, String communityCategory, String communityContent, String fileNameText) {

        Date day = new Date();
        Community community = new Community();
        community.setUser(userRepository.findById(userNumber).get());
        community.setCommunityCategory(communityCategory);
        community.setCommunityContent(communityContent);
        community.setImagesCommunityFileName(fileNameText);
        community.setCommunityState(1);
        community.setCommunityDate(day);

        communityRepositroy.save(community);
    }

    @Override
    public List<HashMap<String, String>> getCommunityBoardList(String communityCategory) {
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); /* 리턴 시킬 형태, 변수 */

        List<Community> communityList = communityRepositroy.findByCommunityCategoryOrderByCommunityDateDesc(communityCategory);

        for(Community community : communityList) {
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("userNumber", Integer.toString(community.getUser().getUserNumber()));
            map.put("userNickname", community.getUser().getUserNickname());
            String img = imagesRepository.profileImagesTest(community.getUser().getUserNumber());
            map.put("userProfileImg", img);
            map.put("userProfileYn", Integer.toString(community.getUser().getUserProfileYn()));
            DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            map.put("communityDate", df.format(community.getCommunityDate()));
            map.put("communityNumber", Integer.toString(community.getCommunityNumber()));
            map.put("communityContent", community.getCommunityContent());
            map.put("communityLike", Integer.toString(community.getCommunityLike()));
            map.put("imagesCommunityFileName", community.getImagesCommunityFileName());
            map.put("imagesCommunityUrl", community.getImagesCommunityUrl());
            map.put("communityCategory", community.getCommunityCategory());
            returnList.add(map);
        }
        return returnList;
    }

    /* 커뮤니티 댓글 이벤트 */
	@Override
	public Comments communityCommentsInsert(String commentsContent, Integer userNumber, Integer communityNumber) {
		Community community = communityRepositroy.findById(communityNumber).get();
		
		
		Comments comments = new Comments();
		comments.setCommentsContent(commentsContent); comments.setCommentsLike(0);
		comments.setCommentsState(0);
		UserVO user = new UserVO(); 
		user.setUserNumber(userNumber);
		comments.setUserVO(user); 
		comments.setCommunity(community);
		
		 
		return commentsRepository.save(comments);
	}

	@Override
	public Community communityCommunityLike(Integer communityNumber) {
		Community community = communityRepositroy.findById(communityNumber).get();
		community.setCommunityLike(community.getCommunityLike()+1);
		return communityRepositroy.save(community);
	}
}

