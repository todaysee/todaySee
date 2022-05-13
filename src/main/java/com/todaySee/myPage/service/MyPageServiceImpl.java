package com.todaySee.myPage.service;




import com.todaySee.myPage.persistence.MyPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MyPageServiceImpl implements MyPageService {

    @Autowired
    private MyPageRepository myPageRepository;


}
