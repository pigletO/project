package com.djs.service.impl;

import com.djs.dao.LoginUserDao;
import com.djs.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginUserDao loginUserDao;

    @Override
    public int selectUser(String username, String password) {

        //检索用户名密码获取数据
        int result = loginUserDao.selectUser(username, password);

        loginUserDao.updateDate(username);

        return result;
    }
}
