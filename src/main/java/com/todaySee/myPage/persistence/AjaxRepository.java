package com.todaySee.myPage.persistence;

import com.todaySee.myPage.domain.AjaxVO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AjaxRepository extends JpaRepository<AjaxVO, Integer> {

}
