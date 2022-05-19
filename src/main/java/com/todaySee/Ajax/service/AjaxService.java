package com.todaySee.Ajax.service;

import com.todaySee.Ajax.dto.AjaxDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface AjaxService {

    public Page<AjaxDto> pages(Pageable pageable);



}

