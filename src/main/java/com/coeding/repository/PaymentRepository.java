package com.coeding.repository;

import org.springframework.stereotype.Repository;

import com.coeding.entity.Payment;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface PaymentRepository extends JpaRepository<Payment,Long> {

}

