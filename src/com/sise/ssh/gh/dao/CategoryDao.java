package com.sise.ssh.gh.dao;

import java.util.List;

import com.sise.ssh.gh.po.Category;

public interface CategoryDao {
		public List<Category> getCategories();
		public Category getCategory(int id);
		public void removeCategory(Category category);
		public void saveOrUpdateCategory(Category category);

}
