package com.sise.ssh.gh.service;

import java.util.List;

import com.sise.ssh.gh.po.Category;


public interface CategoryService {
	public void addCategory(Category category);
	public void updateCategory(Category category);
	public void removeCategory(Category category);
	public List<Category> findAllCategories();
	public Category findById(int id);
}
