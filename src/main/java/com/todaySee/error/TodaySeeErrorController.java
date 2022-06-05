package com.todaySee.error;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;
import java.util.Objects;

@Controller
public class TodaySeeErrorController implements ErrorController {


    @RequestMapping(value = "/error")
    public String handleNoHandlerFoundException(HttpServletResponse response, HttpServletRequest request) {
        int status = response.getStatus(); //오류 상태

        System.out.println(request.getRequestURI());  //요청 주소

        if (status == 404) {
            System.out.println(status + "에러");
            return "redirect:/404";
        } else if (status == 500) {
            System.out.println(status + "에러");
            return "redirect:/500";
        } else {
            System.out.println(status + "에러");
            return "redirect:/unknown";
        }

    }


    @GetMapping("/404")
    public String error404() {
        return "/errors/404";
    }

    @GetMapping("/500")
    public String error500() {
        return "/errors/500";
    }

    @GetMapping("/unknown")
    public String errorUnknown() {
        return "/errors/unknown";
    }

}
