package com.todaySee.home.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}
