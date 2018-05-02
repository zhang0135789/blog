package com.java1234.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.java1234.dao.BloggerDao;
import com.java1234.entity.Blogger;
import com.java1234.service.BloggerService;

/**
 * 博主Service实现类
 * @author Administrator
 *
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService{

	@Resource
	private BloggerDao bloggerDao;

	public Blogger find() {
		return bloggerDao.find();
	}

	public Blogger getByUserName(String userName) {
		return bloggerDao.getByUserName(userName);
	}

	public Integer update(Blogger blogger) {
		return bloggerDao.update(blogger);
	}
	
	
}
