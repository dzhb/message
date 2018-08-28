package com.dzhb.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){

        return "index";
    }

    //管理员登陆
    @RequestMapping(value = "admin/login", method = RequestMethod.GET)
    public String login(){
        return "admin/login";
    }

    @RequestMapping(value = "admin/adminLogin.do")
    public String adminLogin(String username, String password){
        if(username.equals("admin") && password.equals("admin")){
            return "redirect:/admin/messages";
        }
        return "admin/login";
    }

}
