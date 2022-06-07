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

    @Query(value = " SELECT g.genre_name, count(g.genre_name) " +
            " FROM contentgenre cg " +
            " join genre g " +
            " on g.genre_number = cg.genre_number " +
            " WHERE content_number in (SELECT c.content_number " +
            " FROM review r " +
            " join content c " +
            " on r.content_number = c.content_number " +
            " WHERE user_number = :userNumber " +
            " group by r.content_number) " +
            " group by g.genre_name ", nativeQuery = true)
    public List<Object[]>reviewRatingCategoryWordCloud(Integer userNumber);
}


