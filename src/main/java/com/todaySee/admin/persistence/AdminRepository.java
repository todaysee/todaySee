package com.todaySee.admin.persistence;

import com.todaySee.admin.domain.AdminVO;
import com.todaySee.admin.domain.test1;

import java.util.List;
import java.util.Map;

import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<test1, Integer> {


}
