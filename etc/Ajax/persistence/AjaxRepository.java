package com.todaySee.Ajax.persistence;

import com.todaySee.Ajax.domain.AjaxVO;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AjaxRepository extends JpaRepository<AjaxVO, Integer> {

}
