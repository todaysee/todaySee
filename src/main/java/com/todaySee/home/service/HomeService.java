package com.todaySee.home.service;

import java.util.List;

import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;

public interface HomeService {
	
	/** 장르별 컨테츠 리스트 구하기
	 * 	- homeList_genres.jsp에 출력할 컨텐츠 selete
	 * @param content_genres
	 * @return List<Content>
	 */
	List<Content> getGenresContentList(Integer contentgenre_number);
	
}
