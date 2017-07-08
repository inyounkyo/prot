package com.in.moduler.controller;

/**
 * Created by 인연교 on 2017-07-08.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
class HelloWorldController {
    String message = "Welcome to Spring MVC!";

    @RequestMapping("/hello")
    public ModelAndView showMessage(
            @RequestParam(value = "name", required = false, defaultValue = "World") String name) {
        System.out.println("in controller");

        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("message", message);
        mv.addObject("name", name);
        return mv;
    }
}
