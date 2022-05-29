package com.todaySee.home.persistence;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;

public interface ContentRepository extends CrudRepository<Content, Integer>{
	
	
	/** 장르별 컨텐츠 화면에 출력
	 * @param genreNumber (장르 번호)
	 * @return List<Content> 
	 * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 */
	@Query(nativeQuery = true
			,value="SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE cg.genre_number =?1"
			,countQuery = "SELECT c.* FROM contentgenre cg INNER JOIN content c ON c.content_number = cg.content_number INNER JOIN genre g ON g.genre_number = cg.genre_number WHERE cg.genre_number =?1")
	Page<Content> getGenresContentList(Integer genreNumber, Pageable paging);
	

}
