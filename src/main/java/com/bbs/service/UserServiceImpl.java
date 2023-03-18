package com.bbs.service;

import com.bbs.dao.UserDao;
import com.bbs.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;
import org.springframework.util.ObjectUtils;

import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;
@Service
@Transactional
public class UserServiceImpl implements UserService{
    @Resource
    private UserDao userDao;


    @Override
    public void register(User user) {
        //根据用户查询数据库是否存在
      User userDB =  userDao.findByUserName(user.getUserName());
      if (!ObjectUtils.isEmpty(userDB))throw new RuntimeException("用户已存在");

        //进行注册之前给明文密码加密
        String passwordSecret = DigestUtils.md5DigestAsHex(user.getUserPw().getBytes(StandardCharsets.UTF_8));
        user.setUserPw(passwordSecret);
        userDao.save(user);
    }

    @Override
    public User login(String userName, String userPw) {
        //根据用户输入的用户名查询数据是否存在
        User user = userDao.findByUserName(userName);

        System.out.println(user);
        //判断对象是否存在
        if (ObjectUtils.isEmpty(user)) throw new RuntimeException("用户名输入错误！");
        //判断密码正确性

        if(!user.getUserPw().equals(userPw)) throw new RuntimeException("密码输入错误!");
        return user;
    }

    @Override
    public User findme(String userName) {
        return userDao.findByUserName(userName);
    }

    @Override
    public void updateme(User user) {

        userDao.updateme(user);
    }

}
