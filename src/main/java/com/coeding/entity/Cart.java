package com.coeding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.List;
/**
 * author Nhanle
 * */
@Component
public class Cart {
    private List<CartItem> cartItems;
    private double cartTotal;

    void addCartItem(){}
    void updateCartItem(){}
    void removeCartItem(){}
    void clearCartItem(){}
    void calCartTotal(){}

}
