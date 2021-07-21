package com.coeding.controller.pages;

import com.coeding.entity.Brand;
import com.coeding.entity.Cart;
import com.coeding.entity.CartItem;
import com.coeding.entity.Product;
import com.coeding.service.BrandService;
import com.coeding.service.ProductService;
import com.google.gson.Gson;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * author Nhanle
 */
@RestController
@RequestMapping(path = "/cart", produces = "application/json")
@CrossOrigin(origins = "*")
@Slf4j
public class PageShoppingCartController {

    private ProductService productService;
    private Cart cart;

    @Autowired
    public PageShoppingCartController(ProductService productService,Cart cart) {
        this.productService = productService;
        this.cart = cart;
    }

    @GetMapping("/getAll")
    public List<CartItem> getAllCartItem(){
        log.info("getAll Cart Items ->>"+cart.getCartItems().size());
        return cart.getCartItems() ;
    }

    @GetMapping("/get")
    public CartItem getCartItemByProductId(
            @RequestParam(name = "productId", required = true) Long productId
            ){
        log.info("Get CartItem wit ProductId: "+productId);
        Product product = productService.findById(productId);
        CartItem item = new CartItem(
                product,
                1,
                product.getPrice()
        );
        return item;
    }

    @PostMapping("/update")
    public List<CartItem> updateCartItem(
            HttpServletResponse response, HttpServletRequest request,
            @RequestBody List<CartItem> cartItems
    ){
        log.info("update cart items with items number: "+cartItems.size());
        if (cartItems!=null){
            cart.clearCartItem();
            cartItems.forEach(item->cart.addCartItem(item));
        }else{
            cart.clearCartItem();
        }
        return cart.getCartItems();
    }



}
