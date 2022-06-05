package com.todaySee.myPage.service;

import com.todaySee.domain.*;
import com.todaySee.persistence.BookmarkRepository;
import com.todaySee.persistence.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class BookmarkServiceImpl implements BookmarkService{

    @Autowired
    private BookmarkRepository bookmarkRepo;

    @Autowired
    private UserRepository userRepo;

    @Override
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber) {
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>();

        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateNotAndContentIsNull(userRepo.findById(userNumber).get(), 2);

        for(Bookmark b : bookmarkList) {
            HashMap<String, String> map = new HashMap<String, String>();

            map.put("bookmarkNumber", Integer.toString(b.getBookmarkNumber()));
            map.put("bookmarkName", b.getBookmarkName());

            List<Bookmark> bookmarkContentList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, b.getBookmarkName());
//            System.out.println(bookmarkContentList);
            if(!bookmarkContentList.isEmpty()) {
                map.put("contentMainImg", bookmarkContentList.get(0).getContent().getContentMainImagesUrl());
            }

            returnList.add(map);
        }

        return returnList;
    }
    @Override
    public List<HashMap<String, String>> getBookmark(Integer userNumber, Integer bookmarkNumber) {
        Bookmark bookmark = bookmarkRepo.findById(bookmarkNumber).get();
        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, bookmark.getBookmarkName());
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>();
        for(Bookmark b : bookmarkList) {
            HashMap<String, String> map = new HashMap<String, String>();

            map.put("contentNumber", Integer.toString(b.getContent().getContentNumber()));
            map.put("contentTitle", b.getContent().getContentTitle());
            map.put("contentAge", b.getContent().getContentAge());
            map.put("contentMainImg", b.getContent().getContentMainImagesUrl());

            List<ContentGenre> cgList = b.getContent().getContentGenre();
            String genre = "";
            for(ContentGenre cg : cgList) {
                genre = genre + cg.getGenre().getGenreName();
                genre = genre + " ";
            }
            map.put("contentGenre", genre);

            List<ContentOtt> coList = b.getContent().getContentOtt();
            String ott = "";
            for(ContentOtt co : coList) {
                ott = ott + co.getOtt().getOttName();
                ott = ott + " ";
            }
            map.put("contentOtt", ott);

            returnList.add(map);
        }
        return returnList;
    }

}
