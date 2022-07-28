package com.coeding.repository;

import com.coeding.entity.CustomerOrder;
import com.coeding.entity.PaypalDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface PaypalDetailRepository extends JpaRepository<PaypalDetail,Long>  {
    PaypalDetail findByPaymentId(Long paymentId);
    Long countByPaymentId(Long paymentId);
}
//commit
