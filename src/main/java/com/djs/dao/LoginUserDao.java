package com.djs.dao;

import com.djs.entity.LoginUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginUserDao {

    /**
     * 验证登录用户信息
     *
     * @param userName
     * @param password
     * @return
     */
    List<LoginUser> selectUser(@Param("userName") String userName, @Param("password") String password);

    int updateDate();
}
