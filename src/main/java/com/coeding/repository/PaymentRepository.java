package com.coeding.repository;
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
}
//commit
