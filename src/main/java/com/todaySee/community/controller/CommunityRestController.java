package com.todaySee.community.controller;


import org.springframework.beans.factory.annotation.Autowired;
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
    public String communityCommentsInsert(Comments comments, UserVO user, Community community) {
    Comments co = communityService.communityCommentsInsert(comments, user, community);
    if(co==null) {
    	return "댓글입력실패";
    }else {
    	return "댓글입력성공";
    }
  
    	
    }

}
