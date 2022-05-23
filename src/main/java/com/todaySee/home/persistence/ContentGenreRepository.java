package com.todaySee.home.persistence;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.todaySee.domain.ContentGenre;

public interface ContentGenreRepository extends CrudRepository<ContentGenre, Integer> {
//	
//	/**	JPQL 이용
//	 * @param contentgenre_number
//	 * @return
//	 */
//	@Query("SELECT cg FROM ContentGenre cg WHERE cg.genre=%:contentgenre_number%")
//	List<ContentGenre> getGenresContentList(@Param("contentgenre_number") Integer contentgenre_number);
//	
}
