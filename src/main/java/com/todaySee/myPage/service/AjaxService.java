package com.todaySee.myPage.service;

import com.todaySee.myPage.domain.AjaxVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


public interface AjaxService {

    public Page<AjaxVO> notes(Pageable pageable);

}

