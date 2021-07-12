package com.coeding.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.coeding.entity.CustomerOrder;

@Repository
public interface OrderRepository extends JpaRepository<CustomerOrder,Long>  {
	@Query(value = "select count(*) from customer_order o where day(o.order_date) = ?1 and month(o.order_date) = ?2 and year(o.order_date) = ?3 and o.status = true")
	int countOrderToDay(int day, int month, int year);
}