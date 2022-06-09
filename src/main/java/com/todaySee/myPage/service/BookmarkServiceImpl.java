package com.todaySee.myPage.service;

import com.todaySee.domain.*;
import com.todaySee.persistence.BookmarkRepository;
import com.todaySee.persistence.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class BookmarkServiceImpl implements BookmarkService{

    @Autowired
    private BookmarkRepository bookmarkRepo;

    @Autowired
    private UserRepository userRepo;

    /**
     * 즐겨찾기 리스트 페이지에 로그인한 유저가 생성한 즐겨찾기 모두 가져오기
     * @param userNumber : 즐겨찾기를 생성한 유저번호
     * @return List<HashMap<String, String>> : 다른 리스트에 다른 객체의 값을 HashMap 의 Key 값으로 View 에서 부르기 쉽도록 하기 위한 리턴 값
     */
    @Override
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber) {
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); /* 리턴할 리스트 미리 생성 */

        /* 즐겨찾기를 생성한 유저이고, 즐겨찾기 상태가 2이 아니고, 컨텐츠 번호가 null 값인 즐겨찾기 리스트 가져오기 */
        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateBetweenAndContentIsNull(userRepo.findById(userNumber).get(), 0, 1);

        /* 해당 리스트를 즐겨찾기 수 만큼 반복 */
        for(Bookmark b : bookmarkList) {
            HashMap<String, String> map = new HashMap<String, String>(); /* 리턴할 리스트에 담아줄 HashMap 생성 */

            map.put("bookmarkNumber", Integer.toString(b.getBookmarkNumber())); /* 즐겨찾기 번호 */
            map.put("bookmarkName", b.getBookmarkName()); /* 즐겨찾기 이름 */

            /* 즐겨찾기를 생성한 유저이고, 즐겨찾기 상태가 2이고, 즐겨찾기 이름이 반복문 내의 해당 즐겨찾기와 동일한 즐겨찾기 리스트를 가져오기 */
            List<Bookmark> bookmarkContentList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, b.getBookmarkName());

            /* 가져온 즐겨찾기 리스트가 비어있지 않을 때 */
            if(!bookmarkContentList.isEmpty()) {
                String mainImg = bookmarkContentList.get(0).getContent().getContentMainImagesUrl();
                if(!mainImg.equals("none Main img")) {
                    map.put("contentMainImg", mainImg); /* 북마크 안에 담긴 Main 이미지를 HashMap 에 저장 */
                }
            }

            returnList.add(map); /* 해당 HashMap 을 리스트에 담기 */
        }

        return returnList;
    }

    /**
     * 즐겨찾기 번호에 따른 즐겨찾기 상세보기
     * @param bookmarkNumber : 즐겨찾기 번호
     * @return Bookmark : 즐겨찾기에 담긴 상세내용 리턴
     */
    public Bookmark getBookmark(Integer bookmarkNumber) {
        return bookmarkRepo.findById(bookmarkNumber).get();
    }

    /**
     * 해당 즐겨찾기 번호에 담긴 영상 리스트 가져오기
     * @param userNumber : 즐겨찾기를 생성한 유저번호
     * @param bookmarkNumber : 영상 리스트를 찾을 즐겨찾기 번호
     * @return List<HashMap<String, String>> : HashMap 의 Key 값을 이용해 View 에서 부르기 쉽도록 하기 위한 리턴 값
     */
    @Override
    public List<HashMap<String, String>> getBookmarkContentList(Integer userNumber, Integer bookmarkNumber) {
        Bookmark bookmark = bookmarkRepo.findById(bookmarkNumber).get(); /* 즐겨찾기 번호에 따른 즐겨찾기 가져오기 */

        /* 즐겨찾기를 생성한 유저이고, 즐겨찾기 상태가 2이고, 즐겨찾기 이름이 즐겨찾기 번호에 따라 찾아온 해당 즐겨찾기 이름과 같은 즐겨찾기 리스트를 가져오기 */
        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, bookmark.getBookmarkName());

        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); /* 리턴할 리스트 생성 */

        /* 리스트에 담긴 즐겨찾기 수 만큼 반복 */
        for(Bookmark b : bookmarkList) {
            HashMap<String, String> map = new HashMap<String, String>(); /* 리턴할 리스트에 담을 HashMap 생성  */

            map.put("bookmarkNumber", Integer.toString(b.getBookmarkNumber()));
            map.put("contentNumber", Integer.toString(b.getContent().getContentNumber())); /* 즐겨찾기에 담긴 영상 번호 */
            map.put("contentTitle", b.getContent().getContentTitle()); /* 즐겨찾기에 담긴 영상제목 */
            map.put("contentAge", b.getContent().getContentAge()); /* 즐겨찾기에 담긴 영상 연령등급 */

            String mainImg = b.getContent().getContentMainImagesUrl();
            if (!mainImg.equals("none Main img")) {
                map.put("contentMainImg", mainImg); /* 즐겨찾기에 담긴 영상의 Main 이미지 링크 */
            }

            /* 즐겨찾기에 담긴 영상의 장르 가져오기 */
            List<ContentGenre> cgList = b.getContent().getContentGenre(); 
            String genre = ""; /* 컨텐츠 장르에 담긴 장르를 String 형으로 모두 담기 위함 */
            for(ContentGenre cg : cgList) {
                genre = genre + cg.getGenre().getGenreName(); /* 장르 이름을 genre 변수에 담기 */
                genre = genre + " "; /* 장르를 띄워쓰기로 구분 */
            }
            map.put("contentGenre", genre); /* 해당 장르를 HashMap 에 담기 */

            /* 즐겨찾기에 담긴 영상의 플랫폼 가져오기 */
            List<ContentOtt> coList = b.getContent().getContentOtt();
            String ott = ""; /* 컨텐츠 플랫폼에 담긴 플랫폼을 String 형으로 모두 담기 위함 */
            for(ContentOtt co : coList) {
                ott = ott + co.getOtt().getOttName(); /* 플랫폼 이름을 ott 변수에 담기 */
                ott = ott + " "; /* 플랫폼을 띄워쓰기로 구분 */
            }
            map.put("contentOtt", ott); /* 해당 플랫폼을 HashMap 에 담기 */

            returnList.add(map); /* HashMap 을 리스트에 담기 */
        }
        return returnList;
    }

    /**
     * 즐겨찾기 이름, 즐겨찾기 공개/비공개 설정 변경
     * @param bookmarkNumber : 즐겨찾기 번호
     * @param bookmarkName : 수정한 즐겨찾기 이름
     * @param bookmarkState : 수정한 즐겨찾기 상태
     * @param userNumber : 즐겨찾기한 유저
     */
    public void updateBookmark(Integer bookmarkNumber, String bookmarkName, Integer bookmarkState, Integer userNumber) {
        Bookmark bookmark = bookmarkRepo.findById(bookmarkNumber).get();

        /* 즐겨찾기를 생성한 유저이고, 즐겨찾기 상태가 2이고, 즐겨찾기 이름이 즐겨찾기 번호에 따라 찾아온 해당 즐겨찾기 이름과 같은 즐겨찾기 리스트를 가져오기 */
        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, bookmark.getBookmarkName());

        for(Bookmark b : bookmarkList) {
            b.setBookmarkName(bookmarkName);
            bookmarkRepo.save(b);
        }

        // 수정을 안하면 null -> 원래대로 0일지 1일지 모름
        // 수정을 했는데 체크를 해제하면 null -> 0 / 원래 데이터는 1이었을 것
        // 수정을 했는데 체크하면 1 -> 1 / 원래 데이터는 0이었을 것
        Integer stateData = bookmark.getBookmarkState();
        if(bookmarkState == null & stateData == 1) {
            bookmark.setBookmarkState(0);
        } else if(bookmarkState == null & stateData == 0){
            bookmark.setBookmarkState(stateData);
        } else if(bookmarkState == 1 & stateData == 0) {
            bookmark.setBookmarkState(bookmarkState);
        }

        bookmark.setBookmarkName(bookmarkName);
        bookmark.setUser(bookmark.getUser());
        bookmarkRepo.save(bookmark);
    }

    /**
     * 즐겨찾기 삭제
     * @param bookmarkNumber : 즐겨찾기 번호
     * @param userNumber : 즐겨찾기 생성한 유저
     */
    @Override
    public void deleteBookmark(Integer bookmarkNumber, Integer userNumber) {
        // 즐겨찾기 번호에 따른 해당 즐겨찾기 가져오기
        Bookmark bookmark = bookmarkRepo.findById(bookmarkNumber).get();

        // 가져온 해당 즐겨찾기 이름과 같은 즐겨찾기 리스트 가져와서 전부 상태를 4로 바꿔줌
        /* 즐겨찾기를 생성한 유저이고, 즐겨찾기 상태가 2이고, 즐겨찾기 이름이 즐겨찾기 번호에 따라 찾아온 해당 즐겨찾기 이름과 같은 즐겨찾기 리스트를 가져오기 */
        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateAndBookmarkName(userRepo.findById(userNumber).get(), 2, bookmark.getBookmarkName());

        for(Bookmark b : bookmarkList) {
            b.setBookmarkState(4);
            bookmarkRepo.save(b);
        }

        bookmark.setBookmarkState(4);
        bookmarkRepo.save(bookmark);
    }

    /**
     * 컨텐츠가 담긴 즐겨찾기의 컨텐츠리스트를 모두 삭제
     * @param bookmarkList : 컨텐츠가 담긴 즐겨찾기 번호 배열
     * @param bookmarkNumber : 즐겨찾기 번호
     * @param userNumber : 유저 번호
     */
    public void deleteBookmarkContent(String[] bookmarkList, Integer bookmarkNumber, Integer userNumber) {
        for(int i=0; i<bookmarkList.length; i++) {
            // 즐겨찾기 번호로 즐겨찾기 찾아오기
            Bookmark bookmark = bookmarkRepo.findById(Integer.parseInt(bookmarkList[i])).get();
            // 해당 즐겨찾기의 상태를 4로 변경
            bookmark.setBookmarkState(4);
            // 즐겨찾기 수정
            bookmarkRepo.save(bookmark);
        }
    }

    /**
     * 즐겨찾기 내에 담긴 컨텐츠를 다른 즐겨찾기로 이동
     * @param bookmarkContentList : 이동할 컨텐츠가 담긴 즐겨찾기 번호
     * @param bookmarkNumber : 이동할 즐겨찾기 번호
     * @param userNumber : 유저번호
     */
    public void updateBookmarkContent(String[] bookmarkContentList, Integer bookmarkNumber, Integer userNumber) {
        for(int i=0; i<bookmarkContentList.length; i++) {
            // 이동할 즐겨찾기 번호에 따른 즐겨찾기 가져오기
            Bookmark afterBookmark = bookmarkRepo.findById(bookmarkNumber).get();
            // 이동할 컨텐츠가 담긴 즐겨찾기 번호에 따른 즐겨찾기 가져오기
            Bookmark contentBookmark = bookmarkRepo.findById(Integer.parseInt(bookmarkContentList[i])).get();
            contentBookmark.setBookmarkName(afterBookmark.getBookmarkName());
            contentBookmark.setBookmarkDate(new Date());
            bookmarkRepo.save(contentBookmark);
        }
    }

    /**
     * 버튼을 누른 해당 컨텐츠를 현재 즐겨찾기에서 삭제
     * @param contentBookmarkNumber : 버튼을 누른 해당 컨텐츠가 담긴 즐겨찾기 번호
     * @param bookmarkNumber : 즐겨찾기 번호
     * @param userNumber : 유저번호
     */
    @Override
    public void delBookmarkContent(Integer contentBookmarkNumber, Integer bookmarkNumber, Integer userNumber) {
        // 즐겨찾기 번호로 즐겨찾기 찾아오기
        Bookmark bookmark = bookmarkRepo.findById(contentBookmarkNumber).get();
        // 해당 즐겨찾기의 상태를 4로 변경
        bookmark.setBookmarkState(4);
        // 즐겨찾기 수정
        bookmarkRepo.save(bookmark);
    }


}
