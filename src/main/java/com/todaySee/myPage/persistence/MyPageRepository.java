package com.todaySee.myPage.persistence;

import com.todaySee.domain.Images;
import com.todaySee.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MyPageRepository extends CrudRepository<User, Integer> {

}
