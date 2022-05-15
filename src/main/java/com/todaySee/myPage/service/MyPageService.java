package com.todaySee.myPage.service;


import com.todaySee.myPage.domain.MyPageVO;

import java.util.List;

public interface MyPageService {

    public List<MyPageVO> getContentList(MyPageVO vo);

}
