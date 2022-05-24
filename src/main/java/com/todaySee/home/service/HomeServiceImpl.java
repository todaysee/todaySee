package com.todaySee.home.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;
import com.todaySee.domain.Genre;
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
	public List<Content> getGenresContentList(Integer genreNumber) {
		return contentRepo.getGenresContentList(genreNumber);
	}

}
