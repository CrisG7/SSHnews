package com.sise.ssh.gh.action;

import java.util.List;















import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.ssh.gh.dao.CategoryDao;
import com.sise.ssh.gh.dao.impl.CategoryDaoImpl;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.service.CategoryService;

public class CategoryAction extends ActionSupport{
	@Resource private CategoryService categoryService;
	private Category category;
	private List<Category> categories;
	private CategoryDao categoryDao;
	private int id;
	public CategoryAction(){
		categoryDao=new CategoryDaoImpl();
	}
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public List<Category> getCategories() {
		return categories;
	}
	
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public String add(){                     //增加新闻类型
		categoryService.addCategory(category);
		return SUCCESS;
	}
	public String update(){                 //更新新闻类型
		category=categoryService.findById(id);
		return "update";
	}
	public String updated(){                 //更新页面	
		categoryService.updateCategory(category);
		return SUCCESS;
	}
	
	public String delete(){                  //删除已添加的新闻类型
		category=categoryService.findById(id);
		categoryService.removeCategory(category);
		return SUCCESS;
	}
	
	public String list(){                    //显示新闻类型
	categories=categoryService.findAllCategories();	
		return "list";
	}
}
