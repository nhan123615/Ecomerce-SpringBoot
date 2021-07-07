package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
/**
 * author Nhanle
 * */
@Entity
@Table(name = "cart_item")
@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    @OneToOne(targetEntity = Product.class)
    private Product product;
    private int sellingQuantity;
    private double totalPrice;

    public CartItem(Product product, int sellingQuantity, double totalPrice) {
        this.product = product;
        this.sellingQuantity = sellingQuantity;
        this.totalPrice = totalPrice;
    }
}
