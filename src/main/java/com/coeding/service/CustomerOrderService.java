package com.coeding.service;

import com.coeding.entity.*;
import com.coeding.repository.CustomerOrderRepository;
import com.coeding.repository.CustomerRepository;
import com.coeding.repository.DAO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * author Nhanle
 */
@Service
@Transactional
@Slf4j
public class CustomerOrderService implements DAO<CustomerOrder> {


    private CustomerOrderRepository repo;
    private Cart cart;
    private ProductService productService;

    @Autowired
    public CustomerOrderService(CustomerOrderRepository repo, Cart cart,ProductService productService) {
        this.repo = repo;
        this.cart = cart;
        this.productService = productService;
    }

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
            return repo.findByCustomerIdOrderByOrderDateDesc(customerId);
    }

    public CustomerOrder saveOrder(CustomerOrder vo){
        if (checkOrder(vo)){
            vo.getCartItems().forEach(cartItem -> {
                Product product = productService.findById(cartItem.getProduct().getId());
                if (isStockEqual(cartItem)){
                    log.info("decrease stock = 0 and set enable to false (out-stock)");
                    product.setStockQuantity(product.getStockQuantity()-cartItem.getSellingQuantity());
                    product.setEnabled(false);
                }else{
                    log.info("decrease stock");
                    product.setStockQuantity(product.getStockQuantity()-cartItem.getSellingQuantity());
                }
                productService.save(product);
            });
            log.info("save order");
            return repo.save(vo);
        }
        return null;
    }

    public CustomerOrder saveVO(CustomerOrder vo){
        return repo.save(vo);
    }

    private boolean checkOrder(CustomerOrder order){
        boolean check = true;
        for (CartItem cartItem: order.getCartItems()) {
            if (!checkStock(cartItem)){
                check = false;
                break;
            }
        }
        return check;
    }

    private boolean isStockEqual(CartItem item){
        Product product = productService.findById(item.getProduct().getId());
        if (item.getSellingQuantity() == product.getStockQuantity()){
            return true;
        }
        return false;
    }

    private boolean checkStock(CartItem item){
        Product product = productService.findById(item.getProduct().getId());
        if (item.getSellingQuantity()<= product.getStockQuantity()){
            return true;
        }
        return false;
    }
}
//commit
