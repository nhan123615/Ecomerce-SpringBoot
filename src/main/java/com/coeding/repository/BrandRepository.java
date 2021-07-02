package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface BrandRepository extends JpaRepository<Brand,Long>  {
    List<Brand> findByNameContains(String brandName);
}
//commit
