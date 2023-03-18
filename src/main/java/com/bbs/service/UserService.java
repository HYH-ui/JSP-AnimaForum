package com.bbs.service;

import com.bbs.entity.User;

public interface UserService {
    //用户注册
    void register(User user);
    //用户登录
    User login(String userName, String userPw);


    User findme(String userName);

    void updateme(User user);
}
