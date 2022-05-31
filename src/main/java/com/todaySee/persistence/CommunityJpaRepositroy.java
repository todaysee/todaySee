package com.todaySee.persistence;


import com.todaySee.domain.Community;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CommunityJpaRepositroy extends JpaRepository<Community, Integer> {

}
