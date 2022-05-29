package com.todaySee.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.todaySee.domain.Content;
import com.todaySee.home.persistence.ContentGenreRepository;
import com.todaySee.home.persistence.ContentRepository;
import com.todaySee.home.persistence.GenreRepository;

@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	private ContentRepository contentRepo;
	
	@Autowired
	private ContentGenreRepository contentGenreRepo;
	
	@Autowired
	private GenreRepository genreRepo;
	
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @return List<Content> 
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 */
	@Override
	public Page<Content> getGenresContentList(Integer genreNumber, Pageable paging) {
		return contentRepo.getGenresContentList(genreNumber, paging);
	}

}
