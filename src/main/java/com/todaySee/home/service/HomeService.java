package com.todaySee.home.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.todaySee.domain.Content;

public interface HomeService {
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @return List<Content> 
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 */
	Page<Content> getGenresContentList(Integer genreNumber, Pageable paging);
	
	List<Content> RecommendedContentList();
	
	List<Content> newContent();
	
}