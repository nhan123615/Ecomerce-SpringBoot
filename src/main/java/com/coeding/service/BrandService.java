package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.Brand;
import com.coeding.repository.BrandRepository;
import com.coeding.repository.DAO;
@Service
@Transactional
public class BrandService implements DAO<Brand> {
	@Autowired
	BrandRepository brandRep;

	@Override
	public List<Brand> findAll() {
		// TODO Auto-generated method stub
		return brandRep.findAll();
	}

	@Override
	public Brand findById(Long id) {
		// TODO Auto-generated method stub
		return brandRep.getOne(id);
	}

	@Override
	public void save(Brand vo) {
		// TODO Auto-generated method stub
		brandRep.save(vo);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		brandRep.deleteById(id);
	}

}
