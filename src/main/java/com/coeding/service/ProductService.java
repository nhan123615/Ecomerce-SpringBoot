package com.coeding.service;

import com.coeding.entity.Category;
import com.coeding.entity.Product;
import com.coeding.repository.CategoryRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;

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
        return repo.findAll().stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
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
        return repo.findByCategoryId(categoryId).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByCategoryIdAndBrandId(Long categoryId, Long brandId) {
        return repo.findByCategoryIdAndBrandId(categoryId, brandId).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByCategoryIdAndTypeId(Long categoryId, Long typeId) {
        return repo.findByCategoryIdAndTypeId(categoryId, typeId).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByBrandId(Long brandId) {
        return repo.findByBrandId(brandId).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByTypeName(String typeName) {
        return repo.findByTypeName(typeName).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByPriceBetween(Double min, Double max) {
        return repo.findByPriceBetween(min, max).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findByProductName(String productName) {
        return repo.findByProductNameContains(productName).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }


    public List<Product> findByProductNameAndCategoryId(String productName,Long categoryId) {
        return repo.findByProductNameContainsAndAndCategoryId(productName, categoryId).stream().filter(p->p.isEnabled() == true).collect(Collectors.toList());
    }

    public List<Product> findAllIgnoreStatus(){
        return repo.findAll();
    }

    public List<Long> findTop5(){
		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);
        return repo.findTop5(month, year);
    }

    public List<Product> findProductContains(String keyword){
        return repo.findProductContains(keyword);
    }
    public List<Product> findProductContainsByCategoryId(String keyword, Long categoryId){
        return repo.findProductContainsByCategory(keyword,categoryId);
    }

}
