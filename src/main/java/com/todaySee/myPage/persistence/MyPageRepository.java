package com.todaySee.myPage.persistence;

import com.todaySee.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface MyPageRepository extends CrudRepository<User, Integer> {

}
