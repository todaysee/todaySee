package com.todaySee.admin.persistence;

import org.springframework.data.repository.CrudRepository;

import com.todaySee.domain.UserVO;

public interface AdminUserRepository extends CrudRepository<UserVO, Integer> {

}
