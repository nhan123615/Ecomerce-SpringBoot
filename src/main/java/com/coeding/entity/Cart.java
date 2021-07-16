package com.coeding.entity;

import com.coeding.service.ProductService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
/**
 * author Nhanle
 * */
@Slf4j
@Component
public class Cart {
    private List<CartItem> cartItems = new ArrayList<>();
    private Double cartTotal;
    private ProductService productService;

    @Autowired
    public Cart(ProductService productService) {
        this.productService = productService;
    }

    public void addCartItem(CartItem cartItem){
        log.info("add Item to cart with prouctId: "+cartItem.getProduct().getId()+", qty: "+cartItem.getSellingQuantity()+", total: "+cartItem.getTotalPrice());
        Double price = productService.findById(cartItem.getProduct().getId()).getPrice();
        cartItem.setTotalPrice(cartItem.getSellingQuantity() * price);
        this.cartItems.add(cartItem);
    }
    public void updateCartItem(CartItem cartItem){
        log.info("update Item in cart");
        int duplicate = 0;
        for (CartItem item: cartItems) {
            if (item.getProduct().getId() == cartItem.getProduct().getId()){
                item.setSellingQuantity(cartItem.getSellingQuantity());
                Double price = productService.findById(cartItem.getProduct().getId()).getPrice();
                item.setTotalPrice(cartItem.getSellingQuantity()*price);
                duplicate += 1;
            }
        }

        if (duplicate == 0){
            addCartItem(cartItem);
        }
    }
    public void removeCartItem(CartItem cartItem){
        log.info("remove Item in cart");
        int deleteIndex = -1;
        for (int i = 0; i <cartItems.size() ; i++) {
            if (cartItems.get(i).getProduct().getId()== cartItem.getProduct().getId()){
                deleteIndex = i;
                break;
            }
        }
        if (deleteIndex != -1){
            cartItems.remove(deleteIndex);
        }
    }
    public void clearCartItem(){
        log.info("clear Item in cart");
        if (this.cartItems !=null){
            this.cartItems.clear();
        }
    }
    public Double calCartTotal(){
        log.info("get total price Item to cart");
        this.cartTotal = cartItems.stream().mapToDouble(p->p.getTotalPrice()).sum();
        return this.cartTotal;
    }

    public List<CartItem> getCartItems() {
           return new ArrayList<>(this.cartItems);
    }


}
