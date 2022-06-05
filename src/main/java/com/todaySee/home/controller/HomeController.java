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
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.todaySee.domain.Content;
import com.todaySee.home.service.HomeServiceImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private HomeServiceImpl homeServiceImpl;

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
     * @param	로그인 세션
     * @return	추천 알고리즘을 통한 추천 영화 출력
     */

    @GetMapping("/")
    public String homeIndex(Model m) {
    	
    	// 최신 콘텐츠 출력
    	m.addAttribute("newContent",homeServiceImpl.newContent());
    	 
    	// 사용자 추천 콘텐츠 출력
    	m.addAttribute("RecommendedContentList",homeServiceImpl.RecommendedContentList());
    	
        return "/home/homeIndex";
      
    }

  
    /** 검색 결과 페이지 - 콘텐츠
     * @return
     */
    @GetMapping("/search/content")
    public String homeList_content() {
    	System.out.println("content");
        return "/home/homeList_content";
    }
    
    /** 장르별 컨텐츠 화면에 출력
     * @param genreNumber (장르 번호)
     * @return List<Content> 
     * 			- 장르 번호에 따른 컨텐츠 정보를 List로 담음
     */
	
	  @GetMapping("/search/genres") 
	  public String homeList_person(Integer genreNumber, Model model, Integer page) {
	  
		  if(page == null) page = 1;
		  
		  // genreNumber 값이 null일 경우 1(드라마)가 출력되도록 함 
		  if(genreNumber == null) genreNumber = 1;
		  
		  PageRequest pageRequest = PageRequest.of(page, 32,Sort.by(Sort.Direction.ASC, "c.content_title"));
		  
		  // 장르 번호에 따른 컨텐츠 정보들이 List로 담긴다  
		  Page<Content> genresContent = homeServiceImpl.getGenresContentList(genreNumber, pageRequest);
		  
		  List<Content> genresContentList = genresContent.getContent();
		  
		  model.addAttribute("genresContentList", genresContentList); // 리스트에 담긴 컨텐츠를 화면에 출력한다 
		  model.addAttribute("totalPage",genresContent.getTotalPages()); // 전체 페이지 번호
		  
		  return "/home/homeList_genres"; 
	  }// end of homeList_person()
	 

    /** 검색 결과 페이지 - 즐겨찾기
     * @return
     */
    @GetMapping("/search/bookmark")
    public String homeList_bookmark() {
    	return "/home/homeList_bookmark";
    }
    
    /** 검색 결과 페이지 - 커뮤니티
     * @return
     */
    @GetMapping("/search/community")
    public String homeList_community() {
    	return "/home/homeList_community";
    }
    

    //상세 페이지
    @GetMapping("/details")
    public String homeDetails() {
        return "/home/homeDetails";
    }
    
    /*
    //회원가입방법 선택 
    @GetMapping("/homechooseLogin")
    public String homechooseLogin() {
    	return "/home/homechooseLogin";
    }

    //회원가입 페이지
    @GetMapping("/signUp")
    public String homeSignUp() {
        return "/home/homeSignUp";
    }

    //회원가입 완료 페이지
    @GetMapping("/complete")
    public String homeSignUpComplete() {
        return "/home/homeSignUpComplete";
    }

    //로그인 페이지
    @GetMapping("/login")
    public String homeLogin() {
        return "/home/homeLogin";
    }

    //아이디 찾기 페이지
    @GetMapping("/idFind")
    public String homeIdFind() {
        return "/home/homeIdFind";
    }
    
    //아이디 찾기 이메일 목록 리스트 페이지 
    @GetMapping("/homeIdFindList")
    public String homeIdFindList() {
    	return "/home/homeIdFindList";
    }

    //비밀번호 찾기 페이지
    @GetMapping("/passwordFind")
    public String homePasswordFind() {
        return "/home/homePasswordFind";
    }

    //비밀번호 재설정 페이지
    @GetMapping("/homeResettingPwd")
    public String homeResettingPwd() {
    	return "/home/homeResettingPwd";
    }


*/



}