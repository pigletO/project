package com.djs.controller;

import com.djs.entity.LoginUser;
import com.djs.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/login")
public class LoginController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginService loginService;

    @RequestMapping("/")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password){

        String result = loginService.selectUser(username,password);

        return result;
    }

}
