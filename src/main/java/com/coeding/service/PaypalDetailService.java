package com.coeding.service;

import com.coeding.entity.Customer;
import com.coeding.entity.PaypalDetail;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.PaypalDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * author Nhanle
 */
@Service
@Transactional
public class PaypalDetailService implements DAO<PaypalDetail> {

    @Autowired
    private PaypalDetailRepository repo;


    @Override
    public List<PaypalDetail> findAll() {
        return repo.findAll();
    }

    @Override
    public PaypalDetail findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(PaypalDetail vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public PaypalDetail findByPaymentId(Long paymentId) {
        return repo.findByPaymentId(paymentId);
    }

    public Long countByPaymentId(Long paymentId) {
        return repo.countByPaymentId(paymentId);
    }

}
//commit
