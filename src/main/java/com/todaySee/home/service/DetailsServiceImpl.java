//package com.todaySee.home.service;
//
//import com.todaySee.domain.*;
//import com.todaySee.home.persistence.ContentRepository;
//import com.todaySee.home.persistence.ReviewRepository;
//import com.todaySee.home.persistence.UserRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.text.DateFormat;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//
//@Service
//public class DetailsServiceImpl implements DetailsService{
//
//    @Autowired
//    private ContentRepository contentRepo;
//
//    @Autowired
//    private ReviewRepository reviewRepo;
//
//    @Autowired
//    private UserRepository userRepo;
//
//    /**
//     * ID(PK)값에 따른 Content 상세정보
//     * @param contentNumber : 컨텐츠 번호
//     * @return Content : DB에서 받아온 값을 Controller로 리턴
//     */
//    @Override
//    public Content getContentById(Integer contentNumber) {
//        return contentRepo.findById(contentNumber).get();
//    }
//
//    /**
//     * ID(PK)값에 따른 Content 상세정보의 Genre 불러오기
//     * @param contentNumber : 컨텐츠 번호
//     * @return List <String> : 불러온 데이터의 잔처리 후, List에 담아 리턴
//     */
//    @Override
//    public List<String> getContentGenre(Integer contentNumber) {
//        Content cVO = contentRepo.findById(contentNumber).get(); /* PK(ID)로 데이터 불러오기
//        데이터 형태 => ['key'=Key('DetailKey'='value')] 와 같이 되어있음 (무슨 데이터인지 모르겠다 Object 데이터인가 확인 해봐야 함! )
//        key값의 getter로 값을 불러올 수 있음 */
//        List<ContentGenre> genreList = cVO.getContentGenre(); /* ContentGenre가 Content안에 OneToMany로 리스트에 담겨지도록 설정되어있어, getter를 할 경우 리스트 형태가 리턴됨 */
//        List<String> genre = new ArrayList<String>(); /* 해당 데이터 중에서 장르명(genre_name)만 뽑아 담을 리스트 생성 */
//        for(ContentGenre cg : genreList) { /* ContentGenre에 담긴 리스트를 ContentGenre에 하나씩 담아 반복 */
//            Genre gVO = cg.getGenre(); /* 해당 ContentGenre안의 Genre를 getter로 불러와 저장 */
//            System.out.println("=>" + gVO.getGenreName()); /* Genre내의 장르명(genre_name)이 잘 불려지는지 확인 */
//            genre.add(gVO.getGenreName()); /* 장르명을 리스트에 담음 */
//        }
//        return genre; /* 담긴 장르명 리스트를 리턴 */
//    }
//
//    /**
//     * ID(PK)값에 따른 Content 상세정보의 Ott 링크, 이름 불러오기
//     * @param contentNumber : 컨텐츠 번호
//     * @return List <HashMap<String, String>> : 불러온 데이터의 잔처리 후, List에 담아 리턴
//     */
//    @Override
//    public List<HashMap<String, String>> getContentOtt(Integer contentNumber) {
//        Content cVO = contentRepo.findById(contentNumber).get(); /* PK(ID)로 데이터 불러오기 */
//        List<ContentOtt> ottList = cVO.getContentOtt(); /* 컨텐츠플랫폼에 담긴 리스트를 저장 */
//        List<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>(); /* 최종적으로 리턴시킬 데이터 형태  [ {ott_name : 'value', ott_link : 'value'} ]*/
//        for(ContentOtt co : ottList) {  /* 리스트 안에 담긴 갯수만큼 반복 */
//            HashMap<String, String> ottMap = new HashMap<String, String>(); /* HashMap 형태로 데이터를 담은 뒤, List에 담을 것이기 때문에 HashMap 생성 */
//            Ott oVO = co.getOtt(); /* Ott 안의 데이터를 저장 */
//            System.out.println("=>" + oVO.getOttName());
//            System.out.println("=>" + co.getContentottLink());
//            ottMap.put("ottName", oVO.getOttName()); /* Ott 데이터 안의 ottName을 가져와서 key를 "ottName"으로 한 HashMap에 저장 */
//            ottMap.put("ottLink", co.getContentottLink()); /* ContentOtt 데이터 안의 ottLink를 가져와서 key를 "ottLink"로 한 HashMap에 저장  */
//            list.add(ottMap); /* 그것을 리스트에 저장 */
//        }
//        System.out.println("******************" + list);
//        return list; /* 해당 데이터를 담은 리스트를 리턴 */
//    }
//
//    /**
//     * 해당 컨텐츠 번호의 리뷰 리스트를 불러오기
//     * @param contentNumber : 컨텐츠 번호
//     * @return List <HashMap<String, String>> : 리뷰 내용이 담긴 리스트를 리턴
//     */
//    public List<HashMap<String, String>> getReviewList(Integer contentNumber) {
//        List<Review> list = reviewRepo.findByContent(contentRepo.findById(contentNumber).get()); // 컨텐츠 번호에 따른 리뷰 리스트 가져오기
//        List<HashMap<String, String>> returnList = new ArrayList<HashMap<String, String>>(); // 리턴시킬 리스트 생성
//        for(Review r : list) {
//            HashMap<String, String> map = new HashMap<String, String>();
//            // 유저이름, 리뷰내용, 리뷰작성날짜, 좋아요, 스포일러상태
//            map.put("userNickName", r.getUser().getUserNickname()); // 유저 이름 저장
//            map.put("reviewContent", r.getReviewContent()); // 리뷰 내용
//            DateFormat df = new SimpleDateFormat("yyyy/MM/dd"); //리뷰 작성 날짜를 "yyyy/MM/dd"의 String 형으로 변환
//            map.put("reviewDate", df.format(r.getReviewDate())); // 리뷰 작성 날짜
//            map.put("reviewLike", Integer.toString(r.getReviewLike())); // 리뷰 좋아요 // Integer 형인 좋아요를 String 형으로 변환하여 저장
//            map.put("reviewSpoiler", Integer.toString(r.getReviewSpoiler())); // 스포일러 상태 // Integer 형인 스포일러상태를 String 형으로 변환하여 저장
//            returnList.add(map); // 해당 정보를 담은 HashMpa을 리턴할 List에 담기
//        }
//        return returnList;
//    }
//
//    /**
//     * 유저 번호에 따른 유저 정보 가져오기 (아래 insertReview() 함수 사용을 위함)
//     * @param userNumber : 유저 번호
//     * @return User : 받아온 유저 정보 리턴
//     */
//    public User getUserById(Integer userNumber) {
//        return userRepo.findById(userNumber).get();
//    }
//
//    /**
//     * 인자로 받은 값과 함께 vo에 저장하여 DB에 INSERT
//     * @param userNumber : 해당 리뷰를 쓴 유저 번호
//     * @param reviewContent : 리뷰 내용
//     * @param reviewSpoiler : 스포일러 여부 (스포일러체크하면 1, 체크안하면 0)
//     * @param contentNumber : 해당 리뷰를 쓴 컨텐츠 번호
//     */
//    public void insertReview(Integer userNumber, String reviewContent, Integer reviewSpoiler, Integer contentNumber) {
//        Review vo = new Review();
//        vo.setUser(getUserById(userNumber));
//        vo.setReviewContent(reviewContent);
//        vo.setReviewLike(0);
//        vo.setReviewSpoiler(reviewSpoiler);
//        vo.setContent(getContentById(contentNumber));
//        reviewRepo.save(vo);
//    }
//
//}
