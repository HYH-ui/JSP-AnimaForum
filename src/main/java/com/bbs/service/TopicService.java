package com.bbs.service;

import com.bbs.entity.Topic;

import java.util.List;

public interface TopicService {
    List<Topic> list();

    void deltopic(Integer pid);
}
