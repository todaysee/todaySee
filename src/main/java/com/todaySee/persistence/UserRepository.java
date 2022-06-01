package com.todaySee.persistence;

import com.todaySee.domain.UserVO;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<UserVO, Integer> {

    UserVO findByUserEmail(String userEmail);
}
