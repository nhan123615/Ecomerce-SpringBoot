package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.coeding.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

}
