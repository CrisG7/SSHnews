package com.sise.ssh.gh.service;

import java.util.List;

import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;

public interface NewsService {
	public void addNews(News news);
	public void updateNews(News news);
	public void removeNews(News news);
	public List<News> findAllNews();
	public News findById(int id);
	public List<News> findCategoryNews(int cid);
	public List<Category> findAllCategories();
	public List<News> Mfind(String title);
	
	public List<News> wx();
	public List<News> js();
	public List<News> kj();
	public List<News> yl();
	public List<Category> o();
	public List<Category> t();
	public List<Category> s();
	public List<Category> f();
	
	
	public List<News> Tfind(String s,String e);
}
