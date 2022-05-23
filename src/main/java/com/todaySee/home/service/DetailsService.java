package com.todaySee.home.service;

import com.todaySee.domain.Content;

public interface DetailsService {

    /** ID(PK)값에 따른 Content 상세정보
     * 	- homeDetails.jsp(영상 상세정보 페이지)에
     * @param Content vo
     * @return Content
     */
    public Content getContentById(Integer content_number);

}
