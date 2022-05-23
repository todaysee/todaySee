package com.todaySee.admin.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.User;

public interface AdminUserRepository extends CrudRepository<User, Integer> {

}
