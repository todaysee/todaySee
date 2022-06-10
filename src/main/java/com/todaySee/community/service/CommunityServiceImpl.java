package com.todaySee.community.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.todaySee.domain.Comments;
import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import com.todaySee.domain.Ott;
import com.todaySee.domain.UserVO;
import com.todaySee.persistence.CommentsRepository;
import com.todaySee.persistence.CommunityRepositroy;
import com.todaySee.persistence.GenreRepositroy;
import com.todaySee.persistence.OttRepositroy;
import com.todaySee.persistence.UserRepository;

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

    @Override
    public void saveImagesFiles(MultipartFile files) {

        // 원래 파일 이름 추출
        String origName = files.getOriginalFilename();
        System.out.println(origName+"@@@@@@@@테스트");
        // 파일 이름으로 쓸 uuid 생성
        String uuid = UUID.randomUUID().toString();
    }

	@Override
	public Comments communityCommentsInsert(Comments comments, UserVO user, Community community) {

		comments.setCommentsLike(0);
		comments.setCommentsState(0);
		comments.setUserVO(user);
		comments.setCommunity(community);
		
		return commentsRepository.save(comments);
		
	}
}

