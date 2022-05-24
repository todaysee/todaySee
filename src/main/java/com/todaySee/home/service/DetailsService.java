package com.todaySee.home.service;

import com.todaySee.domain.Content;

import java.util.HashMap;
import java.util.List;

public interface DetailsService {

   // ID(PK)값에 따른 Content 상세정보
    public Content getContentById(Integer contentNumber);

    // ID(PK)값에 따른 genre 가져오기
    public List<String> getContentGenre(Integer contentNumber);

    // ID(PK)값에 따른 ott 가져오기
    public List<HashMap<String, String>> getContentOtt(Integer contentNumber);

}
