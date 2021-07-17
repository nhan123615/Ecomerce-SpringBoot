package com.coeding.service;

import com.coeding.entity.Customer;
import com.coeding.entity.Payment;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * author Nhanle
 */
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
		return repo.findById(id).get();
	}

	@Override
	public void save(Payment vo) {
		repo.save(vo);
	}

	@Override
	public void delete(Long id) {
		repo.deleteById(id);
	}

	public Payment findPaymentByCustomerOrderId(Long customerOrderId) {
		return repo.findTop1ByCustomerOrderIdOrderByPaymentDateDesc(customerOrderId);
	}

	public Long countByCustomerOrderId(Long customerOrderId) {
		return repo.countByCustomerOrderId(customerOrderId);
	}

	public Double statistiqueSalesByMonthYear(int month, int year) {
		Double result = 0.0d;
		if(repo.totalPriceInPaymentByMonthYear(month, year) != null) {
			result = repo.totalPriceInPaymentByMonthYear(month, year);
		}
		return result;
	}

	public HashMap<Integer, Double> statistiqueSalesByYear(int year) {
		HashMap<Integer, Double> result = new HashMap<Integer, Double>();
		for (int i = 1; i <= 12; i++) {
			result.put(i, statistiqueSalesByMonthYear(i, year));
		}
		return result;
	}
	
	public List<Double> getListPricePayment(HashMap<Integer, Double> salesByYear){
		List<Double> list = new ArrayList<Double>();
		for (Integer m : salesByYear.keySet()) {
			list.add(salesByYear.get(m));
		}
		return list;
	}
	public double totalSales(HashMap<Integer, Double> salesByYear) {
		double totalSales = 0.0;
		for (Integer m : salesByYear.keySet()) {
			totalSales += salesByYear.get(m);
		}
		return totalSales;
	}
	
	public List<Payment> findAllPaymentByCustomerId(Long customerId){
		return repo.findAllByCustomerIdOrderByPaymentDateDesc(customerId);
	}
}
//commit
