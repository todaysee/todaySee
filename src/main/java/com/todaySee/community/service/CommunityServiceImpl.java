package com.todaySee.community.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.todaySee.domain.Comments;
import com.todaySee.domain.Community;
import com.todaySee.domain.Content;
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

