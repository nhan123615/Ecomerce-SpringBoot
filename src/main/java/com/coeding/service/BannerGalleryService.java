package com.coeding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.BannerGallery;
import com.coeding.repository.BannerGalleryRepository;
import com.coeding.repository.DAO;
@Service
@Transactional
public class BannerGalleryService implements DAO<BannerGallery> {
	@Autowired
	BannerGalleryRepository rep;
	@Override
	public List<BannerGallery> findAll() {
		return rep.findAll();
	}

	@Override
	public BannerGallery findById(Long id) {
		return rep.getOne(id);
	}

	@Override
	public void save(BannerGallery vo) {
		rep.save(vo);
		
	}

	@Override
	public void delete(Long id) {
		rep.deleteById(id);
	}

}
