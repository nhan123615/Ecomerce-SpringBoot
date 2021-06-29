package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "payments")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private double amount;
    private Date paymentDate;
    private String paymentMethod; //cash, paypal
    private boolean status;

    @OneToOne(targetEntity = CustomerOrder.class)
    private CustomerOrder customerOrder;


    @PrePersist
    void orderDate() {
        this.paymentDate = new Date();
    }
}
