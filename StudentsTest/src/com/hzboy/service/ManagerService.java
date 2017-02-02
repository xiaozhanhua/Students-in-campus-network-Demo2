package com.hzboy.service;

import java.util.List;

import com.hzboy.dao.BaseDao;

public class ManagerService<T> {
	
	private BaseDao dao;
	
	//登录的
	public T doLogin(String userName,String password) throws Exception{
		if(userName == null || password == null) return null;
		String queryString = "SELECT u FROM User u WHERE u.uname = '"+userName +"' AND u.password = "+password;
		List<T> users = dao.getObjects(queryString);
		return users.get(0);
	}
	
	//查询的
	public List<T> queryUsers(String uname,Class<T> clazz){
		if(uname == null || "".equals(uname))
			return dao.getAllObjects(clazz);
		String queryString = "SELECT u FROM User u WHERE u.uname like '"+uname+"%'";
		return dao.getObjects(queryString);
	}
	
	//查询帖子的
	public List<T> queryPosts(Class<T> clazz){
		String queryString = " FROM Post";
		return dao.getObjects(queryString);
	}
	
	//添加用户的
	public void addUser(T user) throws Exception{
		dao.addObject(user);
	}
	
	//发布帖子的
	public void addPost(T post) throws Exception{
		dao.addObject(post);
	}
	
	//获取用户的
	public T getUser(Class<T> clazz, int id){
		return dao.getObject(clazz, id);
	}
	
	public BaseDao getDao() {
		return dao;
	}

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}
}
