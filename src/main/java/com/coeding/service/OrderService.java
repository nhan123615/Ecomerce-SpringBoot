package com.coeding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.CustomerOrder;
import com.coeding.repository.DAO;
import com.coeding.repository.OrderRepository;

@Service
@Transactional
public class OrderService implements DAO<CustomerOrder>{
	@Autowired
	private OrderRepository repo;

	@Override
	public List<CustomerOrder> findAll() {
		return repo.findAll();
	}

	@Override
	public CustomerOrder findById(Long id) {
		return repo.findById(id).get();
	}

	@Override
	public void save(CustomerOrder vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
	
}
