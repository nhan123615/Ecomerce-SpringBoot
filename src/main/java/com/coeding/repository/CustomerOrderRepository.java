package com.coeding.repository;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface CustomerOrderRepository extends JpaRepository<CustomerOrder,Long>  {
    CustomerOrder findTop1ByCustomerIdOrderByOrderDateDesc(Long customerId);
//    List<CustomerOrder> findByCustomerId(Long customerId);
    List<CustomerOrder> findByCustomerIdOrderByOrderDateDesc(Long customerId);
}
//commit
