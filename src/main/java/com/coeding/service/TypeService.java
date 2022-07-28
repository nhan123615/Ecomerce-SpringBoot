package com.coeding.service;

import com.coeding.entity.Brand;
import com.coeding.entity.Type;
import com.coeding.repository.BrandRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.TypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class TypeService implements DAO<Type> {
    @Autowired
    private TypeRepository repo;

    @Override
    public List<Type> findAll() {
        return repo.findAll();
    }

    @Override
    public Type findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(Type vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<Type> findByCategoryId(Long id){
        return repo.findByCategoryId(id);
    }
}
//commit
