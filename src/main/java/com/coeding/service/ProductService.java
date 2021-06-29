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
 * */
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

    public List<Product> findByCategoryId(Long categoryId){
        return repo.findByCategoryId(categoryId);
    }

    public List<Product> findByCategoryIdAndBrandId(Long categoryId,Long brandId){
        return repo.findByCategoryIdAndBrandId(categoryId, brandId);
    }

    public List<Product> findByCategoryIdAndTypeId(Long categoryId,Long typeId){
        return repo.findByCategoryIdAndTypeId(categoryId, typeId);
    }


}
