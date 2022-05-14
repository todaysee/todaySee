package com.todaySee.myPage.persistence;


import com.todaySee.myPage.domain.MyPageVO;
import org.springframework.data.repository.CrudRepository;

public interface MyPageRepository extends CrudRepository<MyPageVO, Integer> {
}
