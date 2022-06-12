package com.todaySee.home.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.StringTokenizer;

import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.todaySee.domain.Content;
import com.todaySee.domain.Ott;
import com.todaySee.home.service.HomeService;

import com.todaySee.home.service.HomeServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;

    @Autowired
    ImagesRepository myPageImgRepository;

    //테스트 페이지
    @GetMapping("/2")
    public String ss() {
        return "/index2";
    }

    //테스트 로그인 세션
    @GetMapping("/testSessionLogin")
    public String Login(HttpSession session){
        session.setAttribute("userNumber", 1);
        return "redirect:/2";
    }
    //테스트 로그인 세션
    @GetMapping("/testSessionLogin2")
    public String Login2(HttpSession session){
        session.setAttribute("userNumber", 2);
        return "redirect:/2";
    }
    //테스트 로그아웃 세션
    @GetMapping("/testSessionLogout")
    public String Logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/2";
    }






    /** 홈 페이지
     * 	- 로그인 후 회원의 정보를 토대로 추천 알고리즘을 돌리고 예상 평점이 높은 영화를 추려서 홈 페이지에 출력
     * @param	세션값 얻어오기
     * 				- 세션 O	: 사용자 추천 알고리즘을 통해 나온 콘텐츠 리스트 출력
     * 				- 세션 X	: 출력 X
     * @return	추천 알고리즘을 통한 추천 영화 출력
     */
    @GetMapping("/")
    public String homeIndex(Model model, HttpSession session) {


        //회원 이미지 불러오기
        String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", profileImages);
        System.out.println("테스트 프로필 이미지"+profileImages);

    	// 최신 콘텐츠 출력
    	model.addAttribute("newContent",homeService.newContent());
    	
		// 랜덤으로 장르별 번호 뽑기
		Random random = new Random(System.currentTimeMillis());
		Integer genreNumber_1 = random.nextInt(17)+1;
		Integer genreNumber_2 = random.nextInt(17)+1;
		
		// 동일한 숫자가 나온다면 다시 뽑기
		while(genreNumber_1 == genreNumber_2) {
			genreNumber_2 = random.nextInt(17)+1;
		}// end of while
		
		// 랜덤 번호에 따른 genrsName 구하기 
		model.addAttribute("genre_1", homeService.findByGenreNumber(genreNumber_1));
		model.addAttribute("genre_2", homeService.findByGenreNumber(genreNumber_2));
		
    	// 장르별 콘텐츠 출력
		model.addAttribute("genresContentList_1", homeService.genresContentList(genreNumber_1));
		model.addAttribute("genresContentList_2", homeService.genresContentList(genreNumber_2));
    	
    	// 랜덤 ott 번호 뽑기
    	Integer ottNumber = random.nextInt(5)+1;
    	
    	// 랜덤 번호에 따른 콘텐츠 구하기
    	model.addAttribute("ott", homeService.findByOttNumber(ottNumber));
    	
    	model.addAttribute("ottContentList", homeService.mainOttContentList(ottNumber));
    	
    	// 사용자가 로그인 했는지 확인
    	Integer userNumber = (Integer) session.getAttribute("userNumber");
  	
    	// 로그인을 한 상태일 때
    	if(userNumber != null) {
    		
    		// 파이썬 소켓 연결 유무
    		if(!homeService.recommendedContentList(userNumber).isEmpty()) {
    			// 연결이 되어 있을 때 사용자 추천 콘텐츠 출력
    			model.addAttribute("RecommendedContentList",homeService.recommendedContentList(userNumber));
    		}else {
    			// 연결이 안됐으면 랜덤 영상 10개 출력
    			model.addAttribute("RecommendedContentList",homeService.mainContentList());
    		}
    	
    	}// end of if


    	
		        return "/home/homeIndex";
      
    }//end of homeIndex

  
    /** 검색 결과 페이지 - 콘텐츠
     * @return
     */
    @GetMapping("/search/content")
    public String homeList_content(Model model, HttpSession session) {

        //회원 이미지 불러오기
        String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", profileImages);
        System.out.println("테스트 프로필 이미지"+profileImages);

    	System.out.println("content");
        return "/home/homeList_content";
    }
    
    /** 장르별 콘텐츠 화면에 출력
     * @param genreNumber (장르 번호)
     * @return List<Content> 
     * 			- 장르 번호에 따른 콘텐츠 정보를 List로 담음
     */
	
	  @GetMapping("/search/genres") 
	  public String homeList_person(Integer genreNumber, Model model, Integer page, HttpSession session) {

          //회원 이미지 불러오기
          String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
          model.addAttribute("profileImages", profileImages);
          System.out.println("테스트 프로필 이미지"+profileImages);
	  
		  // 장르 번호에 따른 콘텐츠 정보들이 List로 담긴다  
		  Page<Content> genresContent = homeService.getGenresContentList(genreNumber, page);
		  
		  // 위에서 얻어온 리스트에서 콘텐츠만 리스트에 다시 담는다
		  List<Content> genresContentList = genresContent.getContent();
		  
		  model.addAttribute("genresContentList", genresContentList); // 리스트에 담긴 컨텐츠를 화면에 출력한다 
		  model.addAttribute("totalPage",genresContent.getTotalPages()); // 전체 페이지 번호
		  
		  return "/home/homeList_genres"; 
	  }// end of homeList_person()
	 

	  /** ott별 상세 페이지
	   * @return
	   */
	  @GetMapping("/search/ott")
	  public String homeList_ott(Integer ottNumber, Integer page, Model model, HttpSession session) {

          //회원 이미지 불러오기
          String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
          model.addAttribute("profileImages", profileImages);
          System.out.println("테스트 프로필 이미지"+profileImages);
		  
		  Page<Content> content = homeService.ottContentList(ottNumber, page);
		  
		  // 위에서 얻어온 리스트에서 콘텐츠만 리스트에 다시 담는다
		  List<Content> ottContentList = content.getContent();
		  
		  model.addAttribute("ottContentList", ottContentList);
		  model.addAttribute("totalPage",content.getTotalPages()); // 전체 페이지 번호
		  return "/home/homeList_ott";
	  }
	  
    /** 검색 결과 페이지 - 즐겨찾기
     * @return
     */
    @GetMapping("/search/bookmark")
    public String homeList_bookmark(Model model, HttpSession session) {
        //회원 이미지 불러오기
        String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", profileImages);
        System.out.println("테스트 프로필 이미지"+profileImages);

    	return "/home/homeList_bookmark";
    }
    
    /** 검색 결과 페이지 - 커뮤니티
     * @return
     */
    @GetMapping("/search/community")
    public String homeList_community(Model model, HttpSession session) {

        //회원 이미지 불러오기
        String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", profileImages);
        System.out.println("테스트 프로필 이미지"+profileImages);

        return "/home/homeList_community";
    }
    

    //상세 페이지
    @GetMapping("/details")
    public String homeDetails(Model model, HttpSession session) {

        //회원 이미지 불러오기
        String profileImages = myPageImgRepository.profileImagesTest((Integer) session.getAttribute("userNumber"));
        model.addAttribute("profileImages", profileImages);
        System.out.println("테스트 프로필 이미지"+profileImages);

        return "/home/homeDetails";
    }
    
}