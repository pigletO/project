package com.djs.service.impl;

import com.djs.dao.LoginUserDao;
import com.djs.entity.LoginUser;
import com.djs.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginUserDao loginUserDao;

    @Override
    public String selectUser(String username, String password) {

        List<LoginUser> userList = loginUserDao.selectUser(username, password);

        // 如果未检索到用户信息，刷新登录页面
        if (userList.isEmpty()) {
            return "index";
        }
        // 检索到该用户信息，则登录到指定画面
        return "list";

    }
}
