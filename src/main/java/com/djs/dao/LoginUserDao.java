package com.djs.dao;

import org.apache.ibatis.annotations.Param;


public interface LoginUserDao {

    /**
     * 验证登录用户信息
     *
     * @param userName
     * @param password
     * @return
     */
    int selectUser(@Param("userName") String userName, @Param("password") String password);

    int updateDate();
}
