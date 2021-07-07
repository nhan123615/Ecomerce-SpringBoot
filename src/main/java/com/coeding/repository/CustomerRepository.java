package com.coeding.repository;

import com.coeding.entity.Brand;
import com.coeding.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * author Nhanle
 * */
@Repository
public interface CustomerRepository extends JpaRepository<Customer,Long>  {
    Long countByUserId(Long userId);
    Customer findByUserId(Long userId);
}
//commit
