package com.coeding.service;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import com.coeding.repository.CustomerOrderRepository;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * author Nhanle
 */
@Service
@Transactional
public class CustomerOrderService implements DAO<CustomerOrder> {

    @Autowired
    private CustomerOrderRepository repo;


    @Override
    public List<CustomerOrder> findAll() {
        return repo.findAll();
    }

    @Override
    public CustomerOrder findById(Long id) {
        return repo.findById(id).get();
    }

    @Override
    public void save(CustomerOrder vo) {
        repo.save(vo);
    }


    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public CustomerOrder findOrderByCustomerId(Long customerId) {
        return repo.findTop1ByCustomerIdOrderByOrderDateDesc(customerId);
    }

    public List<CustomerOrder> findAllOrderByCustomerId(Long customerId) {
        return repo.findByCustomerId(customerId);
    }

}
//commit
