package com.todaySee.persistence;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review, Integer> {

    @Query(value = "select count(review_grade), review_grade from review where user_number = :userNumber group by review_grade order by review_grade", nativeQuery = true)
    public List<Object[]>chartReviewRating(Integer userNumber);
}


