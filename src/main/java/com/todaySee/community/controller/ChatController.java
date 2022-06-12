package com.todaySee.community.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import com.todaySee.domain.UserVO;
import com.todaySee.myPage.javaClass.MyPageImages;
import com.todaySee.myPage.service.MyPageService;
import com.todaySee.persistence.ImagesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.todaySee.domain.ChatRoom;

import javax.servlet.http.HttpSession;


@Controller
public class ChatController {

	@Autowired
	MyPageService myPageService;
	@Autowired
	ImagesRepository myPageImgRepository;
	
	List<ChatRoom> roomList = new ArrayList<ChatRoom>();
	static Integer chatroomNumber = 0; // 여기가 문제 
	// static int roomNumber = 0;
	

	@GetMapping("/community/chatRoom")
	public ModelAndView communityChatRoom(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/community/communityChatRoom");

		return mv;
	}
	

	/**
	 * 방 페이지
	 * @return
	 */
	@GetMapping("/community/chatList")
	public ModelAndView chatList(UserVO user, HttpSession session, Model model){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/community/communityChatList");

		user.setUserNumber((Integer) session.getAttribute("userNumber"));
		//마이페이지 회원정보 불러오기, 이미지 불러오기
		model.addAttribute("user", myPageService.getUserInfo(user));
		MyPageImages myPageImages = new MyPageImages();
		List<Object[]> tittleImages = myPageImgRepository.profileTittleImages((Integer) session.getAttribute("userNumber"));
		model.addAttribute("tittleImages", myPageImages.tittleImages(tittleImages));
		List<Object[]> profileImages = myPageImgRepository.profileImages((Integer) session.getAttribute("userNumber"));
		model.addAttribute("profileImages", myPageImages.profileImages(profileImages));

		return mv;
	}
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	@RequestMapping("/createRoom")
	public @ResponseBody List<ChatRoom> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		//Integer roomNumber = (Integer) params.get("roomNumber");
		if(roomName != null && !roomName.trim().equals("")) {
			ChatRoom room = new ChatRoom();
			room.setChatroomNumber(++chatroomNumber);
			room.setChatroomName(roomName);
			roomList.add(room);
		}
		return roomList;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getRoom")
	public @ResponseBody List<ChatRoom> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<ChatRoom> new_list = roomList.stream().filter(o->o.getChatroomNumber()==roomNumber).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("/community/communityChatRoom");
		}else {
			mv.setViewName("/community/communityChatList");
		}
		return mv;
	}


}
