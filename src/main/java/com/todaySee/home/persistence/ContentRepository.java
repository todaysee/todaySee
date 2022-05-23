package com.todaySee.home.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;

public interface ContentRepository extends CrudRepository<Content, Integer>{
	
	/**	JPQL 이용
	 * @param contentgenre_number
	 * @return
	 */
	@Query("SELECT c FROM Content c WHERE c.content_number = (SELECT cg FROM ContentGenre cg WHERE cg.contentgenre_number=1)")
	List<Content> getGenresContentList(Integer contentgenre_number);

}
