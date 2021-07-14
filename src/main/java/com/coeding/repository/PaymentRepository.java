package com.coeding.repository;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import com.coeding.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface PaymentRepository extends JpaRepository<Payment,Long>  {
    Payment findTop1ByCustomerOrderIdOrderByPaymentDateDesc(Long customerOrderId);
    Long countByCustomerOrderId(Long customerOrderId);

}
//commit
