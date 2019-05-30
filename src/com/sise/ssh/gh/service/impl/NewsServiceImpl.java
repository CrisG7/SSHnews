package com.sise.ssh.gh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.ssh.gh.dao.CategoryDao;
import com.sise.ssh.gh.dao.NewsDao;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;
import com.sise.ssh.gh.service.NewsService;

@Transactional(readOnly=false)
public class NewsServiceImpl implements NewsService {
	 @Resource   private NewsDao newsDao;
	
	public void addNews(News news) {
		newsDao.saveOrUpdateNews(news);
		
	}

	@Override
	public void updateNews(News news) {
		newsDao.saveOrUpdateNews(news);
		
	}

	@Override
	public void removeNews(News news) {
		newsDao.removeNews(news);;
		
	}

	@Override
	public List<News> findAllNews() {
		// TODO Auto-generated method stub
		return newsDao.getAllNews();
	}

	@Override
	public News findById(int id) {
		// TODO Auto-generated method stub
		return newsDao.getNews(id);
	}

	@Override
	public List<News> findCategoryNews(int cid) {
		// TODO Auto-generated method stub
		return newsDao.getCategoryNews(cid);
	}

	@Override
	public List<Category> findAllCategories() {
		// TODO Auto-generated method stub
		return newsDao.getCategories();
	}

	@Override
	public List<News> Mfind(String title) {
		// TODO Auto-generated method stub
		return newsDao.rearshNewses(title);
	}

	@Override
	public List<News> wx() {
		// TODO Auto-generated method stub
		return newsDao.wx();
	}

	@Override
	public List<News> js() {
		// TODO Auto-generated method stub
		return newsDao.js();
	
	}

	@Override
	public List<News> kj() {
		// TODO Auto-generated method stub
		return newsDao.kj();
	}

	@Override
	public List<News> yl() {
		// TODO Auto-generated method stub
		return newsDao.yl();
	}

	@Override
	public List<Category> o() {
		// TODO Auto-generated method stub
		return newsDao.getCategoriyo();
	}

	@Override
	public List<Category> t() {
		// TODO Auto-generated method stub
		return newsDao.getCategoriyt();
	}

	@Override
	public List<Category> s() {
		// TODO Auto-generated method stub
		return newsDao.getCategoriys();
	}

	@Override
	public List<Category> f() {
		// TODO Auto-generated method stub
		return newsDao.getCategoriyf();
	}

	@Override
	public List<News> Tfind(String s,String e) {
		
		return newsDao.rearchfindTime(s,e);
	}

}
