package com.todaySee.controller.home;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {


    @RequestMapping("/{step}")
    public void viewPage(@PathVariable String step){
        //경로에 따라서 return 사용 여부 갈림
    }

    @RequestMapping("/homeMain")
    public void homeTest(Model m) {

    }

    @RequestMapping("/homeIndex")
    public void homeIndex(Model m) {

    }


}
