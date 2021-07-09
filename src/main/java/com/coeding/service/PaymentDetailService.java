
package com.coeding.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coeding.entity.Category;
import com.coeding.entity.Payment;
import com.coeding.entity.PaypalDetail;
import com.coeding.entity.Product;
import com.coeding.repository.DAO;
import com.coeding.repository.PaymentDetailRepository;
import com.coeding.repository.PaymentRepository;
import com.paypal.api.payments.PaymentDetail;

@Service
@Transactional
public class PaymentDetailService implements DAO<PaypalDetail>{

	private PaymentDetailRepository paymentDetail;
	private PaymentRepository payment;
	
	@Override
	public List<PaypalDetail> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PaypalDetail findById(Long id) {
		return paymentDetail.findById(id).get();
	}

	@Override
	public void save(PaypalDetail vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}
	


}
