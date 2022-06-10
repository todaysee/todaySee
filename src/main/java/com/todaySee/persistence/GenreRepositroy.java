package com.todaySee.persistence;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.Genre;

public interface GenreRepositroy extends CrudRepository<Genre, Integer> {
	
	Genre findByGenreNumber(Integer genreNumber);
	
	@Query(nativeQuery = true
			,value="SELECT g.genre_number FROM contentgenre cg join genre g on g.genre_number = cg.genre_number WHERE content_number in (SELECT c.content_number FROM review r join content c on r.content_number = c.content_number WHERE user_number = ?1 group by r.content_number) group by g.genre_number order by count(g.genre_number) desc limit 1")
	Integer userPreference(Integer userNumber);
}
