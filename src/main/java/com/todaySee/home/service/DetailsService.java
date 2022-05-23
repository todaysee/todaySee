package com.todaySee.home.service;

import com.todaySee.domain.Content;

public interface DetailsService {

   // ID(PK)값에 따른 Content 상세정보
    public Content getContentById(Integer contentNumber);

}
