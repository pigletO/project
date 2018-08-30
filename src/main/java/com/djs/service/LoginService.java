package com.djs.service;

import com.djs.entity.LoginUser;

public interface LoginService {

    /**
     * 验证登录用户信息
     */
    /*public int selectUser(LoginUser user);*/
    public String selectUser(String username,String password);
}
