package com.bbs.controller;

import com.bbs.entity.Topic;
import com.bbs.entity.User;
import com.bbs.service.TopicService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/topic")
public class TopicController {
    @Resource
    private TopicService topicService;


    //获取所有话题帖子
    @RequestMapping("topiclist")
    public String topiclist(Model model){
        List<Topic> topics = topicService.list();
        model.addAttribute("topics",topics);
        return "topicMana";
    }
    //根据id删除用户信息
    @RequestMapping("deltopic")
    public String deluser(Integer pid){

        topicService.deltopic(pid);
        return "redirect:/topic/topiclist";
    }

}
