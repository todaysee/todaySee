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
	public String kakaoLoginGo() {
		
		return "/home/kakaoSignUp";
	}
	
	
	@GetMapping("/kakao/login")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model m,HttpSession session, RedirectAttributes redirect) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ks.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		
		
		
		// 위에서 만든 코드 아래에 코드 추가
				HashMap<String, Object> userInfo = ks.getUserInfo(access_Token);
				System.out.println("###access_Token#### : " + access_Token);
				System.out.println("###nickname#### : " + userInfo.get("nickname"));
				System.out.println("###email#### : " + userInfo.get("email"));
				System.out.println("###id####"+ userInfo.get("id"));
		
				String id = (String) userInfo.get("id");
				String email = (String) userInfo.get("email");
				
				
				if (ks.findByKakao(id) == null) {
					redirect.addFlashAttribute("id",id);
					
					redirect.addFlashAttribute("email",email);
					
					
					
					return "redirect:/kakao/SignPage";
				} 
				UserVO user = ks.findByKakao(id);
				session.setAttribute("id", id);
				session.setAttribute("email", email);
				session.setAttribute("userNumber", user.getUserNumber());
				session.setAttribute("userNickname", "Kakao"+id);
				
				return "redirect:/";

				
				
				
		
		/*
		 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
		 * 없는 페이지를 넣어도 무방합니다.
		 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
		 */
    	}

}
	
