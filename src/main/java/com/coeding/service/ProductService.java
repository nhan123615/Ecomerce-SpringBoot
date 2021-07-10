package com.coeding.service;

import com.coeding.entity.Category;
import com.coeding.entity.Product;
import com.coeding.repository.CategoryRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * author Nhanle
 */
@Service
@Transactional
public class ProductService implements DAO<Product> {

    @Autowired
    private ProductRepository repo;

    @Override
    public List<Product> findAll() {
        return repo.findAll();
    }

    @Override
    public Product findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(Product vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<Product> findByCategoryId(Long categoryId) {
        return repo.findByCategoryId(categoryId);
    }

    public List<Product> findByCategoryIdAndBrandId(Long categoryId, Long brandId) {
        return repo.findByCategoryIdAndBrandId(categoryId, brandId);
    }

    public List<Product> findByCategoryIdAndTypeId(Long categoryId, Long typeId) {
        return repo.findByCategoryIdAndTypeId(categoryId, typeId);
    }

    public List<Product> findByBrandId(Long brandId) {
        return repo.findByBrandId(brandId);
    }

    public List<Product> findByTypeName(String typeName) {
        return repo.findByTypeName(typeName);
    }

    public List<Product> findByPriceBetween(Double min, Double max) {
        return repo.findByPriceBetween(min, max);
    }

    public List<Product> findByProductName(String productName) {
        return repo.findByProductNameContains(productName);
    }


    public List<Product> findByProductNameAndCategoryId(String productName,Long categoryId) {
        return repo.findByProductNameContainsAndAndCategoryId(productName, categoryId);
    }



}
