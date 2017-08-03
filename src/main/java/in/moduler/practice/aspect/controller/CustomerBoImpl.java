package in.moduler.practice.aspect.controller;

import in.moduler.practice.aspect.service.CustomerBo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerBoImpl {

    @RequestMapping("/addCustomer")
    public ModelAndView addCustomer(@RequestParam(value = "name", required = false, defaultValue = "World") String name){
        System.out.println("addCustomer() is running ");
        ModelAndView mv = new ModelAndView("hello");
        mv.addObject("message", "ddddd");
        mv.addObject("name", name);
        return mv;
    }

    @RequestMapping("/addCustomerReturnValue")
    public String addCustomerReturnValue(){
        System.out.println("addCustomerReturnValue() is running ");
        return "abc";
    }

    public void addCustomerThrowException() throws Exception {
        System.out.println("addCustomerThrowException() is running ");
        throw new Exception("Generic Error");
    }

    public void addCustomerAround(String name){
        System.out.println("addCustomerAround() is running, args : " + name);
    }
}
