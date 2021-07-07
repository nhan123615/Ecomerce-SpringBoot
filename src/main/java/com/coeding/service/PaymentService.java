package com.coeding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.coeding.entity.Payment;
import com.coeding.repository.DAO;
import com.coeding.repository.PaymentRepository;

@Service
@Transactional
public class PaymentService implements DAO<Payment> {
	@Autowired
	private PaymentRepository repo;
	
	
	@Override
	public List<Payment> findAll() {
		return repo.findAll();
	}

	@Override
	public Payment findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Payment vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

}
