package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.coeding.entity.BannerGallery;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@Repository
public interface BannerGalleryRepository extends JpaRepository<BannerGallery, Long> {

}
