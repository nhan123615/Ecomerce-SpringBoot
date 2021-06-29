package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.SanPham;
import com.coeding.repository.DAO;
import com.coeding.repository.SanPhamRepository;

@Service
@Transactional
public class SanPhamService implements DAO<SanPham> {
	
	@Autowired
	SanPhamRepository spRep;
	@Override
	public List<SanPham> findAll() {
		// TODO Auto-generated method stub
		return spRep.findAll();
	}

	@Override
	public SanPham findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(SanPham vo) {
		spRep.save(vo);
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

	public SanPham getSanPhamById(Long id) {
		// TODO Auto-generated method stub
		return spRep.getOne(id);
	}

	
	
}
