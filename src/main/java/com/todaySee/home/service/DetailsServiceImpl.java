package com.todaySee.home.service;

import com.todaySee.domain.*;
import com.todaySee.persistence.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import java.awt.print.Book;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Service
public class DetailsServiceImpl implements DetailsService{

    @Autowired
    private ContentRepository contentRepo;

    @Autowired
    private ReviewJpaRepository reviewJpaRepo;

    @Autowired
    private UserRepository userRepo;

    @Autowired
    private ReviewReportRepository reviewReportRepo;

    @Autowired
    private BookmarkRepository bookmarkRepo;

    @Override
    public UserVO getUser(Integer userNumber) {
        return userRepo.findById(userNumber).get();
    }

    /**
     * ID(PK)값에 따른 Content 상세정보
     * @param contentNumber : 컨텐츠 번호
     * @return Content : DB에서 받아온 값을 Controller로 리턴
     */
    @Override
    public Content getContentById(Integer contentNumber) {
        return contentRepo.findById(contentNumber).get();
    }

    /**
     * ID(PK)값에 따른 Content 상세정보의 Genre 불러오기
     * @param contentNumber : 컨텐츠 번호
     * @return List <String> : 불러온 데이터의 잔처리 후, List에 담아 리턴
     */
    @Override
    public List<String> getContentGenre(Integer contentNumber) {
        Content cVO = contentRepo.findById(contentNumber).get(); /* PK(ID)로 데이터 불러오기
        데이터 형태 => ['key'=Key('DetailKey'='value')] 와 같이 되어있음 (무슨 데이터인지 모르겠다 Object 데이터인가 확인 해봐야 함! )
        key값의 getter로 값을 불러올 수 있음 */
        List<ContentGenre> genreList = cVO.getContentGenre(); /* ContentGenre가 Content안에 OneToMany로 리스트에 담겨지도록 설정되어있어, getter를 할 경우 리스트 형태가 리턴됨 */
        List<String> genre = new ArrayList<String>(); /* 해당 데이터 중에서 장르명(genre_name)만 뽑아 담을 리스트 생성 */
        for(ContentGenre cg : genreList) { /* ContentGenre에 담긴 리스트를 ContentGenre에 하나씩 담아 반복 */
            Genre gVO = cg.getGenre(); /* 해당 ContentGenre안의 Genre를 getter로 불러와 저장 */
            System.out.println("=>" + gVO.getGenreName()); /* Genre내의 장르명(genre_name)이 잘 불려지는지 확인 */
            genre.add(gVO.getGenreName()); /* 장르명을 리스트에 담음 */
        }
        return genre; /* 담긴 장르명 리스트를 리턴 */
    }

    /**
     * ID(PK)값에 따른 Content 상세정보의 Ott 링크, 이름 불러오기
     * @param contentNumber : 컨텐츠 번호
     * @return List <HashMap<String, String>> : 불러온 데이터의 잔처리 후, List에 담아 리턴
     */
    @Override
    public List<HashMap<String, String>> getContentOtt(Integer contentNumber) {
        Content cVO = contentRepo.findById(contentNumber).get(); /* PK(ID)로 데이터 불러오기 */
        List<ContentOtt> ottList = cVO.getContentOtt(); /* 컨텐츠플랫폼에 담긴 리스트를 저장 */
        List<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>(); /* 최종적으로 리턴시킬 데이터 형태  [ {ott_name : 'value', ott_link : 'value'} ]*/
        for(ContentOtt co : ottList) {  /* 리스트 안에 담긴 갯수만큼 반복 */
            HashMap<String, String> ottMap = new HashMap<String, String>(); /* HashMap 형태로 데이터를 담은 뒤, List에 담을 것이기 때문에 HashMap 생성 */
            Ott oVO = co.getOtt(); /* Ott 안의 데이터를 저장 */
            System.out.println("=>" + oVO.getOttName());
            System.out.println("=>" + co.getContentottLink());
            ottMap.put("ottName", oVO.getOttName()); /* Ott 데이터 안의 ottName을 가져와서 key를 "ottName"으로 한 HashMap에 저장 */
            ottMap.put("ottLink", co.getContentottLink()); /* ContentOtt 데이터 안의 ottLink를 가져와서 key를 "ottLink"로 한 HashMap에 저장  */
            list.add(ottMap); /* 그것을 리스트에 저장 */
        }
        System.out.println("******************" + list);
        return list; /* 해당 데이터를 담은 리스트를 리턴 */
    }

    /**
     * 해당 컨텐츠 번호의 리뷰 리스트를 불러오기
     * @param contentNumber : 컨텐츠 번호
     * @return List <HashMap<String, String>> : 리뷰 내용이 담긴 리스트를 리턴
     */
    public List<HashMap<String, String>> getReviewList(Integer contentNumber) {
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); /* 리턴 시킬 형태, 변수 */

        List<Review> reviewList = reviewJpaRepo.findByContent(contentRepo.findById(contentNumber).get()); /* 컨텐츠 번호에 따른 리뷰 가져오기 */

        for(Review review : reviewList) { /* review 리스트를 나누어 review에 담기 */
            HashMap<String, String> map = new HashMap<String, String>(); /* 데이터를 담을 HashMap */
            // 유저이름, 리뷰내용, 리뷰작성날짜, 좋아요, 스포일러상태, 리뷰평점
            map.put("userName", review.getUser().getUserNickname()); /* 유저 닉네임 저장 */
            map.put("reviewNumber", Integer.toString(review.getReviewNumber())); /* 리뷰 번호 저장 */
            map.put("reviewContent", review.getReviewContent()); /* 리뷰 내용 저장 */
            DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); /* 리뷰 작성 날짜를 String 형으로 저장하기 위해 Format 함수 가져오기 */
            map.put("reviewDate", df.format(review.getReviewDate())); /* 리뷰 작성 날짜 - String 형으로 변환 */
            map.put("reviewLike", Integer.toString(review.getReviewLike())); /* 리뷰 좋아요 = String 형으로 변환 */
            map.put("reviewSpoiler", Integer.toString(review.getReviewSpoiler())); /* 리뷰 스포일러 상태 - String 형으로 변환 */
            map.put("reviewRating", Float.toString(review.getReviewGrade())); /* 리뷰 평점 - String 형으로 변환 */
            returnList.add(map); /* 값을 모두 담은 HashMap를 List에 담기 */
        }

        return returnList; /* 리스트 리턴 */
    }

    /**
     * 인자로 받은 값과 함께 vo에 저장하여 DB에 INSERT
     * @param userNumber : 해당 리뷰를 쓴 유저 번호
     * @param reviewContent : 리뷰 내용
     * @param reviewSpoiler : 스포일러 여부 (스포일러체크하면 1, 체크안하면 0)
     * @param contentNumber : 해당 리뷰를 쓴 컨텐츠 번호
     */
    public void insertReview(Integer userNumber, String reviewContent, Integer reviewSpoiler, Integer contentNumber, float reviewRating) {

        Date day = new Date();
        Review review = new Review(); /* 값을 저장할 Review 객체 */
        review.setReviewContent(reviewContent); /* 리뷰 내용 저장 */
        review.setReviewSpoiler(reviewSpoiler); /* 리뷰 스포일러 여부 저장 */
        review.setReviewLike(0); /* 리뷰 좋아요 수 0으로 저장 */
        review.setReviewDate(day); /* 날짜 시간 저장 */
        review.setReviewGrade(reviewRating); /* 리뷰 별점 저장 */
        review.setContent(contentRepo.findById(contentNumber).get()); /* 작성된 리뷰의 영상 */
        review.setUser(userRepo.findById(userNumber).get()); /* 작성한 유저 */
        reviewJpaRepo.save(review); /* Repository 로 DB에 저장 */

    }

    /**
     * 리뷰 번호에 따른 리뷰 가져오기
     * @param reviewNumber : 리뷰 번호
     * @return JSONObject : JSON 객체로 변환시킨 데이터
     */
    @Override
    public JSONObject getReview(Integer reviewNumber) {

        Review review = reviewJpaRepo.findById(reviewNumber).get();

        JSONObject reviewObj = new JSONObject();
        reviewObj.put("userNickname", review.getUser().getUserNickname());
        reviewObj.put("reviewNumber", Integer.toString(review.getReviewNumber()));
        reviewObj.put("reviewContent", review.getReviewContent());

        return reviewObj;
    }

    /**
     * 리뷰를 신고한 이유, 신고받은 리뷰번호를 리뷰신고 테이블에 저장
     * @param reviewReportContent : 리뷰를 신고한 이유
     * @param reportReviewNumber : 신고받은 리뷰 번호
     */
    @Override
    public void insertReviewReport(String reviewReportContent, Integer reportReviewNumber) {
        Review review = reviewJpaRepo.getById(reportReviewNumber); /* 리뷰 번호로 리뷰 가져오기 */

        ReviewReport reviewReport = new ReviewReport(); /* 저장할 리뷰신고 객체(VO) 가져오기 */
        // 신고대상, 신고내용, 신고날짜, 신고상태, 리뷰번호
        reviewReport.setUser(review.getUser()); /* 신고한 리뷰를 작성한 유저 */
        reviewReport.setReviewReportContent(reviewReportContent); /* 리뷰를 신고한 이유 */
        reviewReport.setReviewReportDate(new Date()); /* 신고 날짜 */
        reviewReport.setReviewReportState(0); /* 신고 상태 (0. 신고접수, 1. 신고처리중, 2. 신고처리완료) */
        reviewReport.setReview(review); /* 신고받은 리뷰 */
        reviewReportRepo.save(reviewReport); /* 저장 */
    }

    /**
     * 유저 번호에 따른 즐겨찾기 리스트 가져오기
     * @param userNumber : 유저 번호
     * @return List<HashMap<String, String>> : 리스트에 key 값으로 value 를 저장해 담아 리턴
     */
    @Override
    public List<HashMap<String, String>> getBookmarkList(Integer userNumber) {
        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); /* 리턴할 리스트 생성 */

        List<Bookmark> bookmarkList = bookmarkRepo.findByUserAndBookmarkStateNotAndContentIsNull(userRepo.findById(userNumber).get(), 2); /* 유저번호에 따른 즐겨찾기 가져오기 */
        for(Bookmark bookmark : bookmarkList) { /* 즐겨찾기 갯수만큼 반복 */
            HashMap<String, String> map = new HashMap<String, String>(); /* 리스트 안에 담을 HashMap 생성 */
            map.put("bookmarkNumber", Integer.toString(bookmark.getBookmarkNumber())); /* 즐겨찾기 번호 저장 */
            map.put("bookmarkName", bookmark.getBookmarkName()); /* 즐겨찾기 이름 저장 */
            returnList.add(map); /* 리스트에 저장 */
        }

        return returnList;
    }

    /**
     * 즐겨찾기 생성
     * @param bookmarkName : 생성할 즐겨찾기 이름
     * @param userNumber : 생성한 유저
     * @param contentNumber : 추가할 컨텐츠 번호호
    */
    @Override
    public void insertBookmark(String bookmarkName, Integer userNumber, Integer contentNumber){
        Bookmark bookmark = new Bookmark(); /* Bookmark 객체 생성 */
        bookmark.setBookmarkName(bookmarkName); /* 즐겨찾기 이름 저장 */
        bookmark.setBookmarkDate(new Date()); /* 생성날짜 저장 */
        if(contentNumber == null) {
            bookmark.setBookmarkState(0); /* 즐겨찾기 상태 (0. 비공개, 1. 공개, 2. 컨텐츠 저장) */
        } else {
            bookmark.setBookmarkState(2);
        }
        bookmark.setUser(userRepo.findById(userNumber).get()); /* 생성한 유저 정보 저장 */
        if(contentNumber != null) { /* 컨텐츠 번호가 null이 아닐경우 */
            bookmark.setContent(contentRepo.findById(contentNumber).get()); /* 컨텐츠 저장 */
        }
        bookmarkRepo.save(bookmark); /* 실제 DB 저장 */
    }

    /**
     * 리뷰 좋아요 증가
     * @param reviewNumber : 좋아요를 증가시킬 리뷰번호
     * @return JSONObject : 화면에 증가된 좋아요 출력하기 위한 object
     */
    @Override
    public JSONObject updateReviewLikeUp(Integer reviewNumber) {
        Review review = reviewJpaRepo.findById(reviewNumber).get(); /* 리뷰번호에 따른 리뷰 가져오기 */

        Integer beforeLike = review.getReviewLike(); /* 원래 저장되있던 좋아요 */
        Integer afterLike = beforeLike + 1; /* 1 증가시킨 좋아요 */

        review.setReviewLike(afterLike); /* 증가시킨 좋아요를 저장 */
        reviewJpaRepo.save(review); /* update */

        Review rvo = reviewJpaRepo.findById(reviewNumber).get(); /* 증가된 해당 리뷰 다시 가져오기 */
        JSONObject returnObj = new JSONObject(); /* AJAX 로 리턴시키기 위해 JSON 객체 생성 */
        returnObj.put("reviewNumber", rvo.getReviewNumber()); /* 리뷰 번호 저장 */
        returnObj.put("reviewLike", rvo.getReviewLike()); /* 리뷰 좋아요 저장 */

        return returnObj;
    }

}

