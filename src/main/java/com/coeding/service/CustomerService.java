package com.coeding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.entity.Customer;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;

/**
 * @author TranDung
 *
 */
@Service
@Transactional
public class  CustomerService implements DAO<Customer> {
    @Autowired
	private CustomerRepository ctm;

	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer findById(Long id) {
		return ctm.findById(id).get();
	}

	@Override
	public void save(Customer vo) {
		ctm.save(vo);
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
    
}
	

