package com.bbs.dao;

import com.bbs.entity.Topic;

import java.util.List;

public interface TopicDao {

    List<Topic> list();

    void deltopic(Integer pid);
}
