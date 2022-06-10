package com.todaySee.community.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.todaySee.community.service.CommunityService;
import com.todaySee.domain.Comments;
import com.todaySee.domain.Community;
import com.todaySee.domain.UserVO;

@RestController
public class CommunityRestController {

	@Autowired
	CommunityService communityService;
	
	
	// 댓글 작성
    @PostMapping("/communityCommentsInsert")
    public String communityCommentsInsert(String commentsContent, Integer userNumber, Integer communityNumber) {
    Comments co = communityService.communityCommentsInsert(commentsContent, userNumber, communityNumber);
    
    if(co==null) {
    	System.out.println("댓글입력실패");
	    	return "댓글입력실패";
	    }else {
	    	System.out.println("댓글입력성공");
	    	// 댓글 개수 +1 디비에 입력
	    	return "댓글입력성공";
	    }// end of if
    
    }// end of communityCommentsInsert()
    
    /**	커뮤니티 게시글 좋아요 이벤트
     * @param userNumber
     * @param communityNumber
     * @return String message - DB에 잘 업데이트 되어있는지 확인
     */
    @GetMapping("/communityCommunityLike")
    public String communityCommunityLike(Integer communityNumber) {
    	Community community = communityService.communityCommunityLike(communityNumber);

    	String message = "";
    		if(community == null) {
    			message = "N"; 
			}// end of if
    	
    	return message;
    }// end of communityCommunityLike()

}
