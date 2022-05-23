package com.todaySee.home.controller;

import com.todaySee.domain.Content;
import com.todaySee.home.service.DetailsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/details")
public class DetailsController {

    @Autowired
    private DetailsService detailsService;

    /**
     * 컨텐츠 번호에 따른 영화 상세 페이지
     * @param content_number : 컨텐츠 번호
     * @param model : 화면으로 값 전달
     * @return "/home/homeDetails" : RESTful이 아닌 본래 View링크
     */
    @GetMapping("/{content_number}")
    public String getContentById(@PathVariable Integer content_number, Model model) {
        System.out.println("===============================> 컨텐츠 번호 : " + content_number);

        /* 컨텐츠 상세 내용 가져오기 */
        Content contentVO = detailsService.getContentById(content_number);
        model.addAttribute("Content", contentVO);

        /* 컨텐츠 장르 가져오기 */


        return "/home/homeDetails";
    }

}
