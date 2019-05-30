package com.sise.ssh.gh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.sise.ssh.gh.dao.CategoryDao;
import com.sise.ssh.gh.po.Category;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao{

	@Override
	public List<Category> getCategories() {
		
		return (List<Category>) getHibernateTemplate().find("from Category");
	}

	@Override
	public Category getCategory(int id) {
		
		return getHibernateTemplate().get(Category.class, id);
	}

	@Override
	public void removeCategory(Category category) {
		getHibernateTemplate().delete(category);
		
	}

	@Override
	public void saveOrUpdateCategory(Category category) {
		getHibernateTemplate().saveOrUpdate(category);
		
	}







}
