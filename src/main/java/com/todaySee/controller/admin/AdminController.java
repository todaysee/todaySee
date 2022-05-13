package com.todaySee.controller.admin;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {


    @RequestMapping("/{step}")
    public void viewPage(@PathVariable String step){
        //경로에 따라서 return 사용 여부 갈림
    }

    @RequestMapping("/adminIndex")
    public void adminIndex(Model m) {

    }

    @RequestMapping("/image")
    public void image(Model m) {
        System.out.println("image 페이지 접속");
    }
}
