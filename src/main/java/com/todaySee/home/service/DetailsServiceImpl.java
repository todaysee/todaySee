package com.todaySee.home.service;

import com.todaySee.domain.Content;
import com.todaySee.home.persistence.ContentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl implements DetailsService{

    @Autowired
    private ContentRepository contentRepo;

    @Override
    public Content getContentById(Integer content_number) {
        return null;
    }
}
