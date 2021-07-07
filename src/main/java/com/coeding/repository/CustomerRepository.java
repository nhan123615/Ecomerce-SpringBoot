package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.coeding.entity.Customer;


/**
 * @author TranDung
 *
 */
public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
