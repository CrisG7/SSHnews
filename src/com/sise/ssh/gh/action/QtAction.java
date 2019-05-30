package com.sise.ssh.gh.action;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.ssh.gh.dao.NewsDao;
import com.sise.ssh.gh.dao.impl.NewsDaoImpl;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.po.News;
import com.sise.ssh.gh.service.NewsService;

public class QtAction extends ActionSupport{
	private int nid;
	private News news;
	private List<News> newses;
	private List<Category> categorylist;
	private NewsDao newsDao;
	private String title;
	private List<News> wenxue;
	private List<News> junshi;
	private List<News> yule;
	private List<News> keji;
	private List<Category> wx;
	private List<Category> js;
	private List<Category> kj;
	private List<Category> yl;
	private String startTime;
	private String endTime;
	
	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public List<News> getWenxue() {
		return wenxue;
	}

	public void setWenxue(List<News> wenxue) {
		this.wenxue = wenxue;
	}

	public List<News> getJunshi() {
		return junshi;
	}

	public void setJunshi(List<News> junshi) {
		this.junshi = junshi;
	}

	public List<News> getYule() {
		return yule;
	}
	
	public List<Category> getWx() {
		return wx;
	}

	public void setWx(List<Category> wx) {
		this.wx = wx;
	}

	public List<Category> getJs() {
		return js;
	}

	public void setJs(List<Category> js) {
		this.js = js;
	}

	public List<Category> getKj() {
		return kj;
	}

	public void setKj(List<Category> kj) {
		this.kj = kj;
	}

	public List<Category> getYl() {
		return yl;
	}

	public void setYl(List<Category> yl) {
		this.yl = yl;
	}

	public void setYule(List<News> yule) {
		this.yule = yule;
	}

	public List<News> getKeji() {
		return keji;
	}

	public void setKeji(List<News> keji) {
		this.keji = keji;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	@Resource private NewsService newsService;
	public QtAction(){
		newsDao=new NewsDaoImpl();
	}
	
	public int getNid() {
		return nid;
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
	public String qtgetList(){
		categorylist=newsService.findAllCategories();
		return "clist";
	}
	public String qtgetNewsInfo(){                 //获取新闻内容
		news=newsService.findById(nid);
		return "qgetinfo";
	}
	public String qtgetCategory(){                   //获取新闻类型
		newses=newsService.findCategoryNews(news.getCategory().getId());
		categorylist=newsService.findAllCategories();
		return "list";
	}
	
	public String qtlistNews(){                      //前台Action
		newses=newsService.findAllNews();
		categorylist=newsService.findAllCategories();
		wenxue=newsService.wx();
		junshi=newsService.js();
		keji=newsService.kj();
		yule=newsService.yl();
		yl=newsService.o();
		js= newsService.t();
		kj= newsService.s();
		wx= newsService.f();
		return "qt";
		
	}
	
	 public String searchTime(){
	    	newses=newsService.Tfind(startTime,endTime);
			return "nice1";
	 }
	    	
	public String search(){
		newses=newsService.Mfind(title);
		return "nice";
	}
}
