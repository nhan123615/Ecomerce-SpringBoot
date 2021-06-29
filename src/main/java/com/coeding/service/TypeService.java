package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.Type;
import com.coeding.repository.DAO;
import com.coeding.repository.TypeRepository;
@Service
@Transactional
public class TypeService implements DAO<Type> {
	@Autowired
	TypeRepository typeRep;
	@Override
	public List<Type> findAll() {
		// TODO Auto-generated method stub
		return typeRep.findAll();
	}

	@Override
	public Type findById(Long id) {
		// TODO Auto-generated method stub
		return typeRep.getOne(id);
	}

	@Override
	public void save(Type vo) {
		// TODO Auto-generated method stub
		typeRep.save(vo);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		typeRep.deleteById(id);
	}

}
