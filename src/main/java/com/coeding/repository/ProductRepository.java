package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface ProductRepository extends JpaRepository<Product,Long>  {
    List<Product> findByCategoryId(Long categoryId);
    List<Product> findByCategoryIdAndBrandId(Long categoryId,Long brandId);
    List<Product> findByCategoryIdAndTypeId(Long categoryId,Long typeId);
}
