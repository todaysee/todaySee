package com.todaySee.myPage.service;

import com.todaySee.domain.Bookmark;
import com.todaySee.persistence.BookmarkRepository;
import com.todaySee.persistence.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookmarkServiceImpl implements BookmarkService{

    @Autowired
    private BookmarkRepository bookmarkRepo;

    @Autowired
    private UserRepository userRepo;

    @Override
    public List<Bookmark> getBookmarkList(Integer userNumber) {
        return bookmarkRepo.findByUserAndBookmarkStateNotAndContentIsNull(userRepo.findById(userNumber).get(), 2);
    }

}
