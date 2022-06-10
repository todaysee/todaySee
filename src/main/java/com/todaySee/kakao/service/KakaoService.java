package com.todaySee.kakao.service;

import java.util.HashMap;

import com.todaySee.domain.UserVO;

public interface KakaoService {

	
	public String getAccessToken (String authorize_code);
	
	
	public HashMap<String, Object> getUserInfo(String access_Token);
	
	public UserVO findByKakao(String id);
}
