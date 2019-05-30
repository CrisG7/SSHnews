package com.sise.ssh.gh.dao;

import java.util.List;

import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;

public interface NewsDao {
	public void removeNews(News news);
	public void saveOrUpdateNews(News news);
	public News getNews(int nid);
	public List<News> getAllNews();
	public List<Category> getCategories();
	public List<News> getCategoryNews(int cid);
	public List<News> rearshNewses(String title);
	public List<News> wx();
	public List<News> js();
	public List<News> kj();
	public List<News> yl();
	public List<Category> getCategoriyo();
	public List<Category> getCategoriyt();
	public List<Category> getCategoriys();
	public List<Category> getCategoriyf();
	
	
	public List<News> rearchfindTime(String s,String e);
}
