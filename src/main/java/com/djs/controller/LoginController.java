package com.djs.controller;

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
    public String login(@RequestParam("username") String username, @RequestParam("password") String password) {

        // 检索前台传来的用户名和密码
        int result = loginService.selectUser(username, password);

        // 如果未检索到用户信息，刷新登录页面
        if (result == 0) {
            return "index";
        }
        // 检索到该用户信息，则登录到指定画面
        return "list";
    }

}
