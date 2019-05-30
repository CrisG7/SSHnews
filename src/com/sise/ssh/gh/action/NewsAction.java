package com.sise.ssh.gh.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.ssh.gh.dao.NewsDao;
import com.sise.ssh.gh.dao.impl.NewsDaoImpl;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;
import com.sise.ssh.gh.service.NewsService;

public class NewsAction extends ActionSupport{
	private int nid;
	private News news;
	private List<News> newses;
	
	private List<Category> categorylist;
	private NewsDao newsDao;
	private String title;
	
	@Resource private NewsService newsService;
	public NewsAction(){
		newsDao=new NewsDaoImpl();
	}
	
	public int getNid() {
		return nid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public News getNews() {          
		return news;
	}

	public void setNews(News news) { 
		this.news = news;
	}

	public List<News> getNewses() {         
		return newses;
	}

	public void setNewses(List<News> newses) {
		this.newses = newses;
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
	
	public List<Category> getCategorylist() {
		return categorylist;
	}

	public void setCategorylist(List<Category> categorylist) {
		this.categorylist = categorylist;
	}

	public String addNews(){                   //增加新闻
		news.setIssueTime(new Date());
		newsService.addNews(news);
		return SUCCESS;
	}
	public String updateNews(){               //更新页面
		news=newsService.findById(nid);
		categorylist=newsService.findAllCategories();
		return "update";
	}
	public String updatedNews(){
		news.setIssueTime(new Date());
		newsService.updateNews(news);
		return SUCCESS;
	}
	public String deleteNews(){               //删除新闻
		news=newsService.findById(nid);
		newsService.removeNews(news);
		return SUCCESS;
	}
	public String listNews(){                  //列表中显示新闻
		newses=newsService.findAllNews();
		categorylist=newsService.findAllCategories();
		return "list";
	}
	public String getList(){
		categorylist=newsService.findAllCategories();
		return "clist";
	}
	public String getNewsInfo(){                 //获取新闻内容
		news=newsService.findById(nid);
		return "getinfo";
	}
	public String getCategory(){                   //获取
		newses=newsService.findCategoryNews(news.getCategory().getId());
		categorylist=newsService.findAllCategories();
		return "list";
	}
	 
	
//	public String qtNews(){                      //前台Action
//		newses=newsService.findAllNews();
//		categorylist=newsService.findAllCategories();
//		return "qt";
//		
//	}
}
