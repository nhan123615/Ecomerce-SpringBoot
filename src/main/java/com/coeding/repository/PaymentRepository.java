package com.coeding.repository;
import com.coeding.entity.CustomerOrder;
import com.coeding.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Lam Cong Hau
 * */
@Repository
public interface PaymentRepository extends JpaRepository<Payment,Long>  {
    Payment findTop1ByCustomerOrderIdOrderByPaymentDateDesc(Long customerOrderId);
    Long countByCustomerOrderId(Long customerOrderId);
    @Query(value = "select sum(p.amount) from payments p where month(p.payment_date) = ?1 "
    		+ "and year(p.payment_date) = ?2 and p.status = true", nativeQuery = true)
	Double totalPriceInPaymentByMonthYear(int month, int year);
    @Query(value = "SELECT * FROM payments p INNER JOIN customer_order o ON p.customer_order_id = o.id "
    		+ "WHERE o.customer_id = ?1 "
    		+ "ORDER BY p.payment_date DESC", nativeQuery = true)
    List<Payment> findAllByCustomerIdOrderByPaymentDateDesc(Long customerId);
}
//commit
