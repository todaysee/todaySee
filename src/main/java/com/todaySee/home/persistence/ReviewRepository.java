package com.todaySee.home.persistence;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Integer> {

    List<Review> findByContent(Content content);

}
