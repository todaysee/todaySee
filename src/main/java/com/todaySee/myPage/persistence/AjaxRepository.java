package com.todaySee.myPage.persistence;

import com.todaySee.myPage.domain.AjaxVO;
import org.springframework.data.jpa.repository.JpaRepository;



public interface AjaxRepository extends JpaRepository<AjaxVO, Integer> {


}
