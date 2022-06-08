package com.todaySee.persistence;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReviewJpaRepository extends JpaRepository<Review, Integer> {

    List<Review> findByContentAndReviewStateOrderByReviewDateDesc(Content content, Integer reviewState);

    List<Review> findByUserOrderByReviewDateDesc(UserVO user);


}
