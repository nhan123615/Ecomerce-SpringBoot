package com.coeding.service;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import com.coeding.repository.BrandRepository;
import com.coeding.repository.CategoryRepository;
import com.coeding.repository.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class BrandService implements DAO<Brand> {
    @Autowired
    private BrandRepository repo;

    @Override
    public List<Brand> findAll() {
        return repo.findAll();
    }

    @Override
    public Brand findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(Brand vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<Brand> findByNameContains(String brandName){
        return repo.findByNameContains(brandName);
    }

}
//commit
