package com.bbs.controller;

import com.bbs.entity.Admin;
import com.bbs.entity.User;
import com.bbs.service.AdminService;
import com.bbs.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
@Resource
private AdminService adminService;

    //管理员登录
    @RequestMapping("adminlogin")
    public String adminlogin(String username, String password, HttpSession session) throws UnsupportedEncodingException {
        try {
            Admin admin = adminService.adminlogin(username, password);
            //登录成功
            session.setAttribute("admin",admin);

        }catch (Exception e){
            e.printStackTrace();
            return "redirect:/admin/login.jsp?msg=" + URLEncoder.encode(e.getMessage(),"UTF-8");
        }
        return "adminmenu";
    }
    //用户列表
    @RequestMapping("list")
    public String list(Model model){
        //获取用户列表
        List<User> users = adminService.list();
        model.addAttribute("users",users);
        return "frame/forumsList";
    }
    //添加用户
    @RequestMapping("adduser")
    private String adduser(User user){
    //保存用户信息
        adminService.adduser(user);
        return "redirect:/admin/list";
    }
    //更改用户信息
    @RequestMapping("updateuser")
    public String updateuser(Integer id,Model mode){
        User user = adminService.idByUser(id);
        //存入作用域
        mode.addAttribute("user",user);
        return "frame/updateuser";
    }
    //更新
    @RequestMapping("update")
    public String update(User user){
        //更新用户信息
        adminService.update(user);
        //跳转到员工列表
        return "redirect:/admin/list";
    }
    //根据id删除用户信息
    @RequestMapping("deluser")
    public String deluser(Integer id){

        adminService.deluser(id);
        return "redirect:/admin/list";
    }


}
