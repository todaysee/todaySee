package com.todaySee.persistence;

import com.todaySee.domain.Content;
import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review, Integer> {

    @Query(value = "select count(review_grade), review_grade from review where user_number = :userNumber and review_state = 0 group by review_grade order by review_grade", nativeQuery = true)
    public List<Object[]>chartReviewRating(Integer userNumber);

    @Query(value = " SELECT g.genre_name, count(g.genre_name) " +
            " FROM contentgenre cg " +
            " join genre g " +
            " on g.genre_number = cg.genre_number " +
            " WHERE content_number in (SELECT c.content_number " +
            " FROM review r " +
            " join content c " +
            " on r.content_number = c.content_number " +
            " WHERE user_number = :userNumber and r.review_state = 0" +
            " group by r.content_number) " +
            " group by g.genre_name ", nativeQuery = true)
    public List<Object[]>reviewRatingCategoryWordCloud(Integer userNumber);

    @Query(value = "SELECT count(*) FROM review WHERE user_number = :userNumber and review_state = 0", nativeQuery = true)
    Integer reviewCount(Integer userNumber);

    @Query(value = "SELECT sum(a.rl + b.cl)\n" +
            "FROM\n" +
            "(SELECT sum(review_like) rl FROM review WHERE user_number = :userNumber and review_state = 0) a,\n" +
            "(SELECT sum(community_like) cl FROM community WHERE user_number = :userNumber and community_state = 1) b", nativeQuery = true)
    Integer reviewLikeSum(Integer userNumber);


}


