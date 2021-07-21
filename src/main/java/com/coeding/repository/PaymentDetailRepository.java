package com.coeding.repository;

import org.springframework.stereotype.Repository;

import com.coeding.entity.Payment;
import com.coeding.entity.PaypalDetail;
import com.coeding.entity.Product;
import com.paypal.api.payments.PaymentDetail;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface PaymentDetailRepository extends JpaRepository<PaypalDetail,Long> {
	List<PaypalDetail> findByPaymentId(Long paymentid);

}

