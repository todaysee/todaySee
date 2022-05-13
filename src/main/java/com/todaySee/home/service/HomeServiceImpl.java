package com.todaySee.home.service;



import com.todaySee.home.persistence.HomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private HomeRepository homeRepository;


}
