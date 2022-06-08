package com.todaySee.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.todaySee.domain.Content;
import com.todaySee.home.service.HomeService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class HomeRestController {
	
	@Autowired
	private HomeService homeService;
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @param page (현재 페이지 번호)
	 * @return Page<Content>
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 * 			- 페이징 추가
	 */
	@GetMapping("/search/genres/paging")
	public Page<Content> genresPaging(Integer genreNumber, Integer page){
		return homeService.getGenresContentList(genreNumber, page);
	}// end of genresPaging()
	
	@GetMapping("/search/ott/paging")
	public Page<Content> ottPaging(Integer ottNumber, Integer page){
		return homeService.ottContentList(ottNumber, page);
	}
	
}// end of HomeRestController()
