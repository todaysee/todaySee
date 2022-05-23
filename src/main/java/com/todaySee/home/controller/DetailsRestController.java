package com.todaySee.home.controller;

import com.todaySee.domain.Content;
import com.todaySee.home.service.DetailsService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
public class DetailsRestController {

    @Autowired
    private DetailsService detailsService;

    /**
     * 영상 상세 페이지 유튜브 링크 가져오기
     * @param contentNumber : 영상 번호
     * @return youtubeURL : (AJAX이므로 데이터 형태로 보내기) -> 유튜브 링크 URL
     */
    @GetMapping("/details/Ajax")
    public String getContentGenre(Integer contentNumber) {
        Content contentVO = detailsService.getContentById(contentNumber);
        String youtubeURL = contentVO.getContentYoutubeUrl();
        System.out.println("유튜브 링크 =>"+youtubeURL);
        return youtubeURL;
    }

}
