package com.coeding.repository;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import com.coeding.entity.Payment;

import java.util.List;

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
//    @Query(value = "SELECT ca.product_id "
//    		+ "FROM ((Payment p INNER JOIN customer_order_cart_items c ON  c.customer_order_id = p.customer_order_id) "
//    		+ "INNER JOIN cart_item ca ON c.cart_items_id = ca.id) "
//    		+ "GROUP BY ca.product_id "
//    		+ "ORDER BY sum(ca.selling_quantity) DESC LIMIT 5")
//    List<Long> findTop5ListByIdProduct();
}
//commit
