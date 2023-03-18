package com.bbs.dao;

import com.bbs.entity.User;

public interface UserDao {
    //根据用户名查询用户
    User findByUserName(String userName);
    //保存用户
    void save(User user);

    void updateme(User user);
}
