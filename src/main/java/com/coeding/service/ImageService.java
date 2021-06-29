package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.ImageGallery;
import com.coeding.repository.DAO;
import com.coeding.repository.ImageRepository;

@Service
@Transactional
public class ImageService implements DAO<ImageGallery> {
	@Autowired
	ImageRepository imgRep;
	@Override
	public List<ImageGallery> findAll() {
		// TODO Auto-generated method stub
		return imgRep.findAll();
	}

	@Override
	public ImageGallery findById(Long id) {
		// TODO Auto-generated method stub
		return imgRep.getOne(id);
	}

	@Override
	public void save(ImageGallery vo) {
		
		imgRep.save(vo);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		imgRep.deleteById(id);
	}

}
