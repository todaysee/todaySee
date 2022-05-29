package com.todaySee.community.persistence;


import com.todaySee.domain.Genre;
import org.springframework.data.repository.CrudRepository;

public interface CommunityGenreRepositroy extends CrudRepository<Genre, Integer> {
}
