package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;

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
    private boolean tracked;

    @OneToOne(targetEntity = CustomerOrder.class)
    private CustomerOrder customerOrder;

    public Payment(double amount, String paymentMethod, boolean status, CustomerOrder customerOrder) {
        this.amount = amount;
        this.paymentMethod = paymentMethod;
        this.status = status;
        this.customerOrder = customerOrder;
    }

    @PrePersist
    void orderDate() {
        this.paymentDate = new Date();
        this.tracked = false;
    }

}
