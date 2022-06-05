package com.todaySee.persistence;


import com.todaySee.domain.Genre;
import org.springframework.data.repository.CrudRepository;

public interface GenreRepositroy extends CrudRepository<Genre, Integer> {
	
	Genre findByGenreNumber(Integer genreNumber);
}
