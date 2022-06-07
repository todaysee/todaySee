package com.todaySee.home.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.todaySee.domain.Content;
import com.todaySee.domain.Genre;
import com.todaySee.domain.UserVO;

public interface HomeService {
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @return List<Content> 
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 */
	Page<Content> getGenresContentList(Integer genreNumber, Integer page);
	
	List<Content> recommendedContentList(Integer userNumber);
	
	/**	신작 콘텐츠 출력
	 * 		- homeIndex에 출력할 신작 콘텐츠 검색하여 리스트에 담기
	 * 		- contentReleaseDate의 내림차순으로 상위 5개 출력
	 * @return List<Content>
	 */
	List<Content> newContent();
	
	
	/**	장르별 콘텐츠 출력
	 * 		- homeIndex에 출력할 장르 콘텐츠 검색하여 리스트에 담기
	 * 		- 장르별 콘텐츠 10개 출력
	 * @return List<Content>
	 */
	List<Content> genresContentList(Integer randomNumber);
	
	
	Genre findByGenreNumber(Integer genreNumber);
	
}