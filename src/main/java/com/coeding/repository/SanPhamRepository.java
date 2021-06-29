package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.coeding.entity.SanPham;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPham, Long> {

}
