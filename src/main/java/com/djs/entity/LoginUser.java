package com.djs.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.sql.Date;
@Data
@AllArgsConstructor
public class LoginUser {

    private String userName;

    private String password;

    private Date loginDate;
}
