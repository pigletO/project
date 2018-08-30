package com.djs.service;

import com.djs.entity.LoginUser;

public interface LoginService {

    /**
     * 验证登录用户信息并更新登录日期
     */
    public int selectUser(String username,String password);

}
