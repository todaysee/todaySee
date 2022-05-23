package com.todaySee.home.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Content;
import com.todaySee.domain.ContentGenre;

public interface ContentGenreRepository extends CrudRepository<ContentGenre, Integer> {
	
	/**	JPQL 이용
	 * @param contentgenre_number
	 * @return
	 */
	@Query("SELECT c FROM ContentGenre cg INNER JOIN cg.content c ")
	List<Content> getGenresContentList(Integer contentgenre_number);
	
}
