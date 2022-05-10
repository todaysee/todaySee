package com.todaySee.controller.mypageCommunity;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypageCommunity")
public class MyPageCommunityController {


    @RequestMapping("/{step}")
    public void viewPage(@PathVariable String step){
        //경로에 따라서 return 사용 여부 갈림
    }

    @RequestMapping("/mypageCommunityIndex")
    public void homeIndex(Model m) {

    }


}
