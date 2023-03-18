package com.bbs.service;

import com.bbs.dao.AdminDao;
import com.bbs.entity.Admin;
import com.bbs.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class AdminServiceImpl implements AdminService{
@Resource
private AdminDao adminDao;
    @Override
    public Admin adminlogin(String username, String password) {
        //根据用户输入的用户名查询数据是否存在
        Admin admin = adminDao.findAdmin(username);
        //判断对象是否存在
        if (ObjectUtils.isEmpty(admin)) throw new RuntimeException("用户名输入错误！");
        //判断密码正确性
        if(!admin.getUsername().equals(password)) throw new RuntimeException("密码输入错误!");
        return admin;
    }
//用户列表
    @Override
    public List<User> list() {


        return adminDao.list();
    }

    @Override
    public void adduser(User user) {
       adminDao.adduser(user);
    }

    @Override
    public User idByUser(Integer id) {

        return adminDao.idByUser(id);
    }

    @Override
    public void update(User user) {
        adminDao.update(user);
    }

    @Override
    public void deluser(Integer id) {
        adminDao.deluser(id);
    }
}
