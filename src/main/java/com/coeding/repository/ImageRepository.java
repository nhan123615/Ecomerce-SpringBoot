package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.coeding.entity.ImageGallery;

public interface ImageRepository extends JpaRepository<ImageGallery, Long> {
	
}
