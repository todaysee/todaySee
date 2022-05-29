package com.todaySee.home.persistence;

import com.todaySee.domain.Ratings;
import org.springframework.data.repository.CrudRepository;

public interface RatingRepository extends CrudRepository<Ratings, Integer> {

}
