package com.todaySee.Ajax.persistence;


import com.todaySee.domain.Content;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AjaxRepository extends JpaRepository<Content, Integer> {

}
