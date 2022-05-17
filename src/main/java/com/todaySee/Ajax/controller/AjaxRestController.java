package com.todaySee.Ajax.controller;

import com.todaySee.Ajax.dto.AjaxDto;
import com.todaySee.Ajax.service.AjaxService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class AjaxRestController {

    @Autowired
    private AjaxService ajaxService;

    @GetMapping("/ajaxPaging")
    public Page<AjaxDto> test1(Pageable pageable) {

        return ajaxService.pages(pageable);
    }

}
