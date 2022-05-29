package com.todaySee.myPage.persistence;

import com.todaySee.domain.Review;
import com.todaySee.domain.UserVO;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

public interface MyPageRepository extends CrudRepository<UserVO, Integer> {


}
