package com.bbs.service;

import com.bbs.entity.Admin;
import com.bbs.entity.User;

import java.util.List;


public interface AdminService {
    //管理员登录
    Admin adminlogin(String username, String password);
    //用户列表
    List<User> list();
    //添加用户信息
    void adduser(User user);

    User idByUser(Integer id);

    void update(User user);

    void deluser(Integer id);
}
