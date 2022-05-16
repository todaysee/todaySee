package com.todaySee.myPage.service;





import com.todaySee.myPage.domain.AjaxVO;
import com.todaySee.myPage.persistence.AjaxRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;



@Service
public class AjaxServiceImpl implements AjaxService {

    @Autowired
    private AjaxRepository ajaxRepository;


    @Override
    public Page<AjaxVO> notes(Pageable pageable) {
        Page<AjaxVO> notes =ajaxRepository.findAll(pageable);

        Page
    }
}
