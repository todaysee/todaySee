package com.todaySee.kakao.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todaySee.domain.UserVO;
import com.todaySee.kakao.service.KakaoServiceImpl;

@Controller
public class KakaoController {

	@Autowired
	KakaoServiceImpl ks;
	
	
	
	@GetMapping("/kakao/SignPage")
	public String kakaoLoginGo(@RequestParam(value = "code", required = false) String code) {
		
	
		return "/home/kakaoSignUp";
	}
	
	
	@GetMapping("/kakao/login")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model m,HttpSession session, RedirectAttributes redirect) throws Exception {
	//	System.out.println("#########" + code); 		//확인할려고 출력
		String access_Token = ks.getAccessToken(code); // service의 토큰얻는 함수에 인자값으로 코드를 넣어 토근을 얻습니다.
	//	System.out.println("###access_Token#### : " + access_Token);	//확인 할려고 출력
		// 위에서 만든 코드 아래에 코드 추가
				HashMap<String, Object> userInfo = ks.getUserInfo(access_Token);	// 얻은 토큰을 통해 getUserInfo인자값으로 토큰을 넣고
																					// 유저 정보를 가져옴
				
//				System.out.println("###access_Token#### : " + access_Token);		// 확인할려고 출력
//				System.out.println("###nickname#### : " + userInfo.get("nickname"));	// 확인할려고 출력
//				System.out.println("###email#### : " + userInfo.get("email"));			// 확인할려고 출력
//				System.out.println("###id####"+ userInfo.get("id"));					// 확인할려고 출력
		
				String id = (String) userInfo.get("id");				// id 정보 String 타입으로 로 담기
				String email = (String) userInfo.get("email");			
																	
				if (ks.findByKakao(id) == null) {					// 카카오 컬럼에 카카오의id값이 없으면 
					redirect.addFlashAttribute("id",id);			
					redirect.addFlashAttribute("email",email);
					return "redirect:/kakao/SignPage";			// 카카오 회원가입페이지로
				} 
				UserVO user = ks.findByKakao(id);				
				session.setAttribute("id", id);							//세션저장	
				session.setAttribute("email", email);					//세션저장	
				session.setAttribute("userNumber", user.getUserNumber());	//세션저장	
				session.setAttribute("userNickname", "Kakao"+id);			//세션저장	
				session.setAttribute("admin", user.getUserAdmin());			//세션저장	
				
				return "redirect:/";		//메인페이지로
		
		/*
		 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
		 * 없는 페이지를 넣어도 무방합니다.
		 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
		 */
    	}

}
	
