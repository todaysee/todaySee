package com.todaySee.home.service;

import com.todaySee.domain.Content;
import com.todaySee.home.persistence.ContentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl implements DetailsService{

    @Autowired
    private ContentRepository contentRepo;

    /**
     * ID(PK)값에 따른 Content 상세정보
     * @param content_number : 컨텐츠 번호
     * @return Content : DB에서 받아온 값을 Controller로 리턴
     */
    @Override
    public Content getContentById(Integer content_number) {
        return contentRepo.findById(content_number).get();
    }
}
