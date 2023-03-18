package com.bbs.dao;

import com.bbs.entity.Admin;
import com.bbs.entity.User;

import java.util.List;

public interface AdminDao {
    //根据用户名名查询管理员
    Admin findAdmin(String username);
    List<User> list();
    //添加用户信息
    void adduser(User user);

    User idByUser(Integer id);
    //更新员工信息
    void update(User user);

    void deluser(Integer id);
}
