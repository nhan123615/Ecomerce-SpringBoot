package com.coeding.repository;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import com.coeding.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * author Nhanle
 * */
@Repository
public interface PaymentRepository extends JpaRepository<Payment,Long>  {
    Payment findTop1ByCustomerOrderIdOrderByPaymentDateDesc(Long customerOrderId);
    Long countByCustomerOrderId(Long customerOrderId);
    @Query(value = "select sum(p.amount) from Payment p where month(p.paymentDate) = ?1 "
    		+ "and year(p.paymentDate) = ?2 and p.status = true")
	Double totalPriceInPaymentByMonthYear(int month, int year);
}
//commit
