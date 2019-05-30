package com.sise.ssh.gh.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;
import com.sise.ssh.gh.dao.CategoryDao;
import com.sise.ssh.gh.po.Category;
import com.sise.ssh.gh.service.CategoryService;

@Transactional(readOnly=false)
public class CategoryServiceImpl implements CategoryService {
        @Resource   private CategoryDao categoryDao;
        
	@Override
	public void addCategory(Category category) {
	categoryDao.saveOrUpdateCategory(category);

	}

	@Override
	public void updateCategory(Category category) {
		categoryDao.saveOrUpdateCategory(category);

	}

	@Override
	public void removeCategory(Category category) {
		categoryDao.removeCategory(category);
	}

	@Override
	public List<Category> findAllCategories() {
    
		return categoryDao.getCategories();
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		return categoryDao.getCategory(id);
	}

}
