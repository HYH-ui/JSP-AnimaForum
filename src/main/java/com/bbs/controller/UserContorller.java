package com.bbs.controller;

import com.bbs.entity.Admin;
import com.bbs.entity.User;
import com.bbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

@Controller
@RequestMapping("/user")
public class UserContorller {
    @Resource
    private UserService userService;


    //用户登陆
    @RequestMapping("login")
    public String login(String userName, String userPw, HttpSession session) throws UnsupportedEncodingException {
        try {
            //执行登录业务逻辑
            User user = userService.login(userName, userPw);
            //登录成功，保存用户登录标记
            session.setAttribute("user",user);
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/login.jsp?msg=" +URLEncoder.encode(e.getMessage(),"UTF-8");
        }
        return "index";
    }


    //用户注册
    @RequestMapping("register")
    public String register(User user) throws UnsupportedEncodingException {

        try {
            userService.register(user);
            System.out.println(user);
        }catch (RuntimeException e) {
            e.printStackTrace();
            return "redirect:/register.jsp?msg="+ URLEncoder.encode(e.getMessage(),"UTF-8");
        }
        return "redirect:/login.jsp";
    }

    //用户信息
    @RequestMapping("findme")
    public String findme(String userName, Model mode){
        User user = userService.findme(userName);
        //存入作用域
        mode.addAttribute("user",user);
        return "updateme";
    }

    //修改我的信息
    @RequestMapping("me")
    public String me(User user){
        userService.updateme(user);
        return "updateme";

    }
}
