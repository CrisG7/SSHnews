package com.sise.ssh.gh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.sise.ssh.gh.dao.NewsDao;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao{

	@Override
	public void removeNews(News news) {
		getHibernateTemplate().delete(news);
		
	}

	@Override
	public void saveOrUpdateNews(News news) {
		getHibernateTemplate().saveOrUpdate(news);
		
	}

	@Override
	public News getNews(int nid) {
		return getHibernateTemplate().get(News.class, nid);
	}

	@Override
	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News Order By issueTime Desc");
	}

	@Override
	public List<Category> getCategories() {
		// TODO Auto-generated method stub
		return (List<Category>) getHibernateTemplate().find("from Category");
	}

	@Override
	public List<News> getCategoryNews(int cid) {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News where category_id="+cid);
	}

	@Override
	public List<News> rearshNewses(String title) {
		// TODO Auto-generated method stub
		List<News> newses=(List<News>) getHibernateTemplate().find("from News where title LIKE ?0 ","%"+title+"%");
		return newses;
	}

	@Override
	public List<News> wx() {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News where category_id=4");
	}

	@Override
	public List<News> js() {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News where category_id=2");
	}

	@Override
	public List<News> kj() {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News where category_id=3");
	}

	@Override
	public List<News> yl() {
		// TODO Auto-generated method stub
		return (List<News>) getHibernateTemplate().find("from News where category_id=1");
	}

	@Override
	public List<Category> getCategoriyo() {
		// TODO Auto-generated method stub
		return (List<Category>) getHibernateTemplate().find("from Category where id=1");
	}

	public List<Category> getCategoriyt() {
		// TODO Auto-generated method stub
		return (List<Category>) getHibernateTemplate().find("from Category where id=2");
	}
	public List<Category> getCategoriys() {
		// TODO Auto-generated method stub
		return (List<Category>) getHibernateTemplate().find("from Category where id=3");
	}
	public List<Category> getCategoriyf() {
		// TODO Auto-generated method stub
		return (List<Category>) getHibernateTemplate().find("from Category where id=4");
	}

	@Override
	public List<News> rearchfindTime(String s,String e) {
		return (List<News>)getHibernateTemplate().find("from News where issueTime BETWEEN '"+s+"' and '"+e+"'");
	}

	

}
