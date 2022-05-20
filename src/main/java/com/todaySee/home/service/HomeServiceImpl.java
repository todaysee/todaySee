package com.todaySee.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todaySee.domain.Content;
import com.todaySee.home.persistence.ContentRepository;

@Service
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	private ContentRepository contentRepo;
	
	/**	장르별 영화 컨텐츠
	 *
	 */
	@Override
	public List<Content> getGenresContentList(Integer contentgenre_number) {
		return contentRepo.getGenresContentList(contentgenre_number);
	}

}
