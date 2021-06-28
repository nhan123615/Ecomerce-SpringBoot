package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "rates")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class Rating {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    private int starNumber;
    private String review;
    @OneToOne(targetEntity = Customer.class)
    private Customer customer;

    @OneToOne(targetEntity = Product.class)
    private Product product;
}
