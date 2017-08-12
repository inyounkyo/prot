package com.prot.web.controller;

/**
 * Created by 인연교 on 2017-07-08.
 */


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;


@Controller
public class HelloWorldController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    String message = "Welcome to Spring MVC!";

    @RequestMapping("/hello")
    public ModelAndView showMessage(@RequestParam(value = "name", required = false, defaultValue = "World") String name,
                                    HttpServletRequest req) {
        System.out.println("in controller");
        Map<String,Object> map = (Map<String, Object>)req.getAttribute("w");
        logger.debug("[CTR-LEVEL]:::::"+map.get("w"));
        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("message", message);
        mv.addObject("name", name);
        mv.addObject("wObj",map);
        return mv;
    }

    @RequestMapping("/summurya")
    public String summurya( Model model,HttpServletRequest req ) {
        logger.debug("********************************hello log4j !!!");
        Map<String,Object> map = (Map<String, Object>)req.getAttribute("w");
        logger.debug("[CTR-LEVEL]:::::"+map.get("w"));
        model.addAttribute("message", "User " + "kknd" + " deleted");
        return "summurya";
    }

}
