package com.todaySee.myPage.service;




import com.todaySee.myPage.domain.MyPageVO;
import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class MyPageServiceImpl implements MyPageService {

    @Autowired
    private MyPageRepository myPageRepository;


    @Override
    public List<MyPageVO> getContentList(MyPageVO vo) {
        return (List<MyPageVO>) myPageRepository.findAll();
    }
}
