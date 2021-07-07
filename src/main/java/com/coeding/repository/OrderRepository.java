package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.coeding.entity.CustomerOrder;

@Repository
public interface OrderRepository extends JpaRepository<CustomerOrder,Long>  {

}
