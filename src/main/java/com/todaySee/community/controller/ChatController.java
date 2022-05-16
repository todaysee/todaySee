package com.todaySee.community.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.todaySee.community.domain.RoomVO;



@Controller
public class ChatController {
	
	List<RoomVO> roomList = new ArrayList<RoomVO>();
	static int roomNumber = 0;
	

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
	public ModelAndView chatList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/community/communityChatList");
		return mv;
	}
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	@RequestMapping("/createRoom")
	public @ResponseBody List<RoomVO> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			RoomVO room = new RoomVO();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
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
	public @ResponseBody List<RoomVO> getRoom(@RequestParam HashMap<Object, Object> params){
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
		
		List<RoomVO> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("/community/chatRoom");
		}else {
			mv.setViewName("/community/chatList");
		}
		return mv;
	}


}
