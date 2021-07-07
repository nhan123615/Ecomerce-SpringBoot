package com.coeding.service;

import com.coeding.entity.Customer;
import com.coeding.entity.Payment;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;
import com.coeding.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * author Nhanle
 * */
@Service
@Transactional
public class PaymentService implements DAO<Payment> {

    @Autowired
    private PaymentRepository repo;

    @Override
    public List<Payment> findAll() {
        return repo.findAll();
    }

    @Override
    public Payment findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(Payment vo) {
        repo.save(vo);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public Payment findPaymentByCustomerOrderId(Long customerOrderId){
        return repo.findTop1ByCustomerOrderIdOrderByPaymentDateDesc(customerOrderId);
    }

}
//commit
