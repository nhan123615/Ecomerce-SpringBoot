package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.Product;
import com.coeding.repository.DAO;
import com.coeding.repository.ProductRepository;


@Service
@Transactional
public class ProductService implements DAO<Product> {
	
	@Autowired
	ProductRepository productRep;

	@Override
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return productRep.findAll();
	}

	@Override
	public Product findById(Long id) {
		// TODO Auto-generated method stub
		return productRep.getOne(id);
	}

	@Override
	public void save(Product vo) {
		productRep.save(vo);
	}

	@Override
	public void delete(Long id) {
		productRep.deleteById(id);
	}
}
