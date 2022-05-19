package com.todaySee.home.controller;





import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {



    //테스트 페이지
    @GetMapping("/2")
    public String ss() {
        return "/index2";
    }

    /** 홈 페이지
     * 	- 로그인 후 회원의 정보를 토대로 추천 알고리즘을 돌리고 예상 평점이 높은 영화를 추려서 홈 페이지에 출력
     * @param	로그인 세션
     * @return	추천 알고리즘을 통한 추천 영화 출력
     */
    @GetMapping("/")
    public String homeIndex(Model m) {
    	
		// 소켓을 선언
        try (Socket client = new Socket()) {
        	
        	// 소켓에 접속하기 위한 접속 정보를 선언한다.
            InetSocketAddress ipep = new InetSocketAddress("localhost", 9001);
            
            // 소켓 접속
            client.connect(ipep);
            
            // 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다.
            try (OutputStream sender = client.getOutputStream();) {
            	System.out.println("전송시작");
            	
            	// 회원의 아이디를 보낼거니까 int -> String으로 형변환
                String msg = String.valueOf(7);
                
                // string -> byte 배열 형변환
                byte[] data = msg.getBytes();
                
                // ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
                ByteBuffer b = ByteBuffer.allocate(4);
                
                // byte포멧은 little 엔디언이다.
                b.order(ByteOrder.LITTLE_ENDIAN);
                
                b.putInt(data.length);
 
                // 데이터 길이 전송
                sender.write(b.array(), 0, 4);
              
                // 데이터 전송
                sender.write(data);
                data = new byte[4];

                
                // 한글깨짐 방지를 위해 BufferedReader로 받아줌
                InputStream receiver = client.getInputStream();
                
                BufferedReader reader = new BufferedReader(new InputStreamReader(receiver, "UTF-8"));
                String message = "";
                
                while((message = reader.readLine()) != null) {
                	
                	System.out.println("메시지 확인(1)"+message);
                	System.out.println("메시지 확인(2)"+message);
                	
//                	message = message.trim().replace("", " ");
                }
                
                m.addAttribute("test",message);
               
                
            }
        } catch (Throwable e) {
            e.printStackTrace();
        }
    	
        return "/home/homeIndex";
    }

    /** 검색 결과 페이지 - 콘텐츠
     * @return
     */
    @GetMapping("/search/content")
    public String homeList_content() {
        return "/home/homeList_content";
    }
    
    /** 검색 결과 페이지 - 인물
     * @return
     */
    @GetMapping("/search/person")
    public String homeList_person() {
    	return "/home/homeList_person";
    }

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






}