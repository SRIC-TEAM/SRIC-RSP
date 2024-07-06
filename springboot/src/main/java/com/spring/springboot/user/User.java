package com.spring.springboot.user;

import lombok.Data;

import java.util.Date;

@Data
public class User
{
    private String id;
    private int uid;
    private String username;
    private String password;
    private String mail;
    private String createTime;
    private String avatar;
}
