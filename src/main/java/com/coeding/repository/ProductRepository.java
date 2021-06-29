package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.coeding.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
