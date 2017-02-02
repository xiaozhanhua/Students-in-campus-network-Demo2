package com.hzboy.dao;

import java.io.Serializable;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hzboy.orm.Post;

public class BaseDao extends HibernateDaoSupport {
	
	private Post post = new Post();
	
	@SuppressWarnings("unchecked")
	public <T> List<T> getObjects(String queryString){
		return (List<T>)this.getHibernateTemplate().find(queryString);
	}
	
	public <T> List<T> getAllObjects(Class<T> clazz){
		return this.getHibernateTemplate().loadAll(clazz);
	}
	
	public <T> void addObject(T clazz){
		this.getHibernateTemplate().save(clazz);
	}
	public <T> void updateObject(T clazz){
		this.getHibernateTemplate().update(clazz);
	}
	
	public <T> void deleteObject(T clazz){
		this.getHibernateTemplate().delete(clazz);
	}
	
	public <T> T getObject(Class<T> clazz,Serializable id){
		return this.getHibernateTemplate().get(clazz, id);
	}
}
