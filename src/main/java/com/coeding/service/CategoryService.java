package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.Category;
import com.coeding.repository.CategoryRepository;
import com.coeding.repository.DAO;
@Service
@Transactional
public class CategoryService implements DAO<Category> {
	@Autowired
	CategoryRepository categoryRep;
	@Override
	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryRep.findAll();
	}

	@Override
	public Category findById(Long id) {
		// TODO Auto-generated method stub
		return categoryRep.getOne(id);
	}

	@Override
	public void save(Category vo) {
		// TODO Auto-generated method stub
		categoryRep.save(vo);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		categoryRep.deleteById(id);
	}
	
}
