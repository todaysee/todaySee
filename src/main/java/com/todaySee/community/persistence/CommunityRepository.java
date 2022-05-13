package com.todaySee.community.persistence;


import com.todaySee.community.domain.CommunityVO;
import org.springframework.data.repository.CrudRepository;

public interface CommunityRepository extends CrudRepository<CommunityVO, Integer> {
}
