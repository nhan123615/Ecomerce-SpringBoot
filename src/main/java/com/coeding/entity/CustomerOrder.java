package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "customer_order")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class CustomerOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private String deliverCustomerName;
    private String deliverCustomerAddress;
    private String deliverCustomerPhone;

    private double totalPrice;
    private Date orderDate;
    private boolean status;

    @ManyToOne (targetEntity = Customer.class)
    private Customer customer;
    @OneToMany(targetEntity = CartItem.class,cascade=CascadeType.ALL,fetch = FetchType.EAGER)
    private List<CartItem> cartItems;

    @PrePersist
    void orderDate() {
        this.orderDate = new Date();
    }

    public CustomerOrder(String deliverCustomerName, String deliverCustomerAddress, String deliverCustomerPhone, double totalPrice, boolean status, Customer customer,List<CartItem> cartItems) {
        this.deliverCustomerName = deliverCustomerName;
        this.deliverCustomerAddress = deliverCustomerAddress;
        this.deliverCustomerPhone = deliverCustomerPhone;
        this.totalPrice = totalPrice;
        this.status = status;
        this.customer = customer;
        this.cartItems = cartItems;
    }


}
