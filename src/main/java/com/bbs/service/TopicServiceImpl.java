package com.bbs.service;

import com.bbs.dao.TopicDao;
import com.bbs.entity.Topic;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class TopicServiceImpl implements TopicService{
    @Resource
    private TopicDao topicDao;
    @Override
    public List<Topic> list() {
        return topicDao.list();
    }

    @Override
    public void deltopic(Integer pid) {
        topicDao.deltopic(pid);
    }


}
