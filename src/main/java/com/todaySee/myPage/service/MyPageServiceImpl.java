package com.todaySee.myPage.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.todaySee.domain.*;
import com.todaySee.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.todaySee.Converter.CommunityConverter;
import com.todaySee.dto.CommunityDto;

@Service
public class MyPageServiceImpl implements MyPageService{

    @Autowired
    UserRepository userRepository;

    @Autowired
    ReviewRepository reviewRepository;

    @Autowired
    ReviewJpaRepository reviewJpaRepository;

    @Autowired
    CommunityRepositroy communityRepositroy;

    @Autowired
    CommunityJpaRepositroy communityJpaRepositroy;
    
	@Autowired
	private GenreRepositroy genreRepository;
	
	@Autowired
	private ContentRepository contentRepository;

    @Autowired
    private CommentsRepository commentsRepo;
    
    @Override
    public UserVO getUserInfo(UserVO user) {
        //JPA 조건문을 이용하여 DB검색함
        return userRepository.findById(user.getUserNumber()).get();
    }

    @Override
    public UserVO updateNickname(Integer userNumber, String userNickname) {
        UserVO user = userRepository.findById(userNumber).get();
        user.setUserNickname(userNickname);
        return userRepository.save(user);
    }

    @Override
    public List<Review> getReviewList(Integer userNumber) {
        return reviewJpaRepository.findByUserOrderByReviewDateDesc(userRepository.findById(userNumber).get());
    }

    @Override
    public Page<CommunityDto> boardPages(Pageable pageable) {
        Page<Community> communities = communityJpaRepositroy.findAll(pageable);

        Page<CommunityDto> communityDtos = communities.map(entity -> {
            CommunityDto communityDto = CommunityConverter.communityToCommunityDto(entity);
            return communityDto;
        });

        return communityDtos;
    }

    @Override
    public List<Community> getUserBoardList(Integer userNumber) {
        return communityRepositroy.findByUser_UserNumberOrderByCommunityDateDesc(userNumber);
    }

    @Override
    public List<HashMap<String, Object>> chartReviewRating(Integer userNumber) {
        List<HashMap<String, Object>> rList = new ArrayList<HashMap<String,Object>>();

        for(Object[] o : reviewRepository.chartReviewRating(userNumber)) {
            HashMap<String, Object> hm = new HashMap<String, Object>();
            hm.put("ratingCount",o[0]);
            hm.put("rating",o[1]);
            rList.add(hm);
        }

        return rList ;
    }

    public List<HashMap<String, Object>> reviewRatingCategoryWordCloud(Integer userNumber){
        List<HashMap<String, Object>> categoryList = new ArrayList<HashMap<String,Object>>();

        for(Object[] o : reviewRepository.reviewRatingCategoryWordCloud(userNumber)) {
            HashMap<String, Object> hm = new HashMap<String, Object>();
            hm.put("genreName",o[0]);
            hm.put("genreCount",o[1]);
            categoryList.add(hm);
        }

        return categoryList;
    }

    @Override
    public Integer reviewCount(Integer userNumber) {
        return reviewRepository.reviewCount(userNumber);
    }

    @Override
    public Integer communityCount(Integer userNumber) {
        return communityRepositroy.communityCount(userNumber);
    }

    @Override
    public Integer userReviewLikeSum(Integer userNumber) {
        return reviewRepository.reviewLikeSum(userNumber);
    }

    // 마이페이지 나의 취향 추천 영상
	@Override
	public List<Content> userPreference(Integer userNumber) {
		
		// 유저가 선호하는 장르 top3가 나옴
		Integer genre = genreRepository.userPreference(userNumber);
		
		Integer genreNumber;

		// 평가 항목이 없는 유저는 드라마 장르에서 추천
		if(genre != null) {
			genreNumber = genre;
		}else {
			genreNumber = 1;
		}// end of if
		return contentRepository.myPageLikeContentList(genreNumber);
	}// end of userPreference()

    @Override
    public Integer userJoinDate(Integer userNumber) {
        return userRepository.userJoinDate(userNumber);
    }

    /****************************** 댓글 - 권소연 추가 ***********************************/

    /**
     * 유저 번호에 따른 댓글 리스트 가져오기
     * @param userNumber : 유저 번호
     * @return List<HashMap<String, String>> : 출력할 내용을 담은 리스트 리턴
     */
    public List<HashMap<String, String>> getCommentList(Integer userNumber){
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>();

        // 유저 번호가 userNumber 와 같고 해당 댓글의 상태가 0인 댓글 리스트 가져오기
        List<Comments> commentsList = commentsRepo.findByUserVOAndCommentsState(userRepository.findById(userNumber).get(), 0);

        for(Comments c : commentsList) {
            HashMap<String, String> map = new HashMap<String, String>();
            // 댓글번호, 댓글내용, 작성날짜, 게시글번호, 게시글내용, 게시글작성유저닉네임
            map.put("commentNumber", Integer.toString(c.getCommentsNumber())); /* 댓글 번호 저장 */
            map.put("commentContent", c.getCommentsContent()); /* 댓글 내용 저장 */
            DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); /* 댓글 작성 날짜를 String 형으로 저장하기 위해 Format 함수 가져오기 */
            map.put("commentDate", df.format(c.getCommentsDate())); /* 댓글 작성 날짜 저장 */
            map.put("communityNumber", Integer.toString(c.getCommunity().getCommunityNumber())); /* 댓글이 작성된 게시글 번호 저장 */
            String communityContent = c.getCommunity().getCommunityContent(); /* 댓글이 작성된 게시글 내용 저장 */
            if(communityContent.length() <= 10) { /* 게시글 내용이 10글자보다 적을 경우 */
                map.put("communityContent", communityContent); /* 그대로 저장 */
            } else { /* 많을 경우 */
                communityContent = communityContent.substring(0, 10) + " ..."; /* 10글자 이하로 잘라서 ...을 붙이기 */
                map.put("communityContent", communityContent); /* 저장 */
            }
            map.put("communityWriter", c.getCommunity().getUser().getUserNickname()); /* 게시글을 작성한 유저의 닉네임 */
            returnList.add(map);
        }

        return returnList;
    }

}
