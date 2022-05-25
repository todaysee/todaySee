package com.todaySee.home.persistence;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review, Integer> {

    List<Review> findByContent(Content content);

}
