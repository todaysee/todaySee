package com.todaySee.persistence;


import com.todaySee.domain.Community;
import com.todaySee.domain.Genre;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommunityRepositroy extends CrudRepository<Community, Integer> {

    List<Community> findByCommunityCategoryOrderByCommunityDateDesc(String category);

    List<Community> findByUser_UserNumberOrderByCommunityDateDesc(Integer userNumber);

    @Query(value = "SELECT count(*) FROM community WHERE user_number = :userNumber",nativeQuery = true)
    Integer communityCount(Integer userNumber);

}
