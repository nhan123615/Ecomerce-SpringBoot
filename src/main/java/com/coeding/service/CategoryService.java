package com.coeding.service;

import com.coeding.entity.Category;
import com.coeding.entity.ResetPassword;
import com.coeding.entity.User;
import com.coeding.repository.CategoryRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.ResetPasswordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * author Nhanle
 * */
@Service
@Transactional
public class CategoryService implements DAO<Category> {

    @Autowired
    private CategoryRepository repo;

    @Override
    public List<Category> findAll() {
        return repo.findAll();
    }

    @Override
    public Category findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(Category vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }
}
//commit
