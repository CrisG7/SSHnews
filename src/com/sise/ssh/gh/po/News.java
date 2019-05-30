package com.sise.ssh.gh.po;

import java.util.Date;

public class News {
	private Integer id;
	private String title;
	private String content;
	private String newsfrom;
	private Date issueTime;
	private Category category;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(Date issueTime) {
		this.issueTime = issueTime;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getNewsfrom() {
		return newsfrom;
	}
	public void setNewsfrom(String newsfrom) {
		this.newsfrom = newsfrom;
	}
	
	
}
