package com.todaySee.service.home;


import com.todaySee.persistence.home.HomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private HomeRepository homeRepository;


}
