package com.todaySee.admin.persistence;

import com.todaySee.admin.domain.AdminVO;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<AdminVO, Integer> {
}
