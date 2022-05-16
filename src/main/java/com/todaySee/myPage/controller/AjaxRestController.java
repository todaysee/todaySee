package com.todaySee.myPage.controller;

import com.todaySee.myPage.domain.AjaxDto;
import com.todaySee.myPage.domain.AjaxVO;
import com.todaySee.myPage.service.AjaxService;
import lombok.RequiredArgsConstructor;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.neo4j.Neo4jProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AjaxRestController {

    @Autowired
    private AjaxService ajaxService;

    @GetMapping("/ajaxPaging")
    public Page<AjaxDto> test(Pageable pageable) {

        return ajaxService.pages(pageable);
    }


}
