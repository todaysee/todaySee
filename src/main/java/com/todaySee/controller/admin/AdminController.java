package com.todaySee.controller.admin;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {




    @GetMapping("/admin")
    public String adminIndex(Model m) {
        System.out.println("admin main 페이지 접속");
        return "/admin/adminIndex";
    }

    //@RequestMapping("/admin", method = RequestMethod.GET)
    @GetMapping("/admin/i")
    public String image(Model m) {
        System.out.println("image 페이지 접속");

        return "/admin/image";
    }


}
