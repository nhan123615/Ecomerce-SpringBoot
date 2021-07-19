package com.coeding.controller.pages;

import com.coeding.entity.*;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * author Nhanle
 */
@Controller
@RequestMapping("/cart")
public class PageCartController {

    private Cart cart;

    @Autowired
    public PageCartController(Cart cart) {
        this.cart = cart;
    }

    @GetMapping
    public String cartPage(Authentication authentication, Model model){
//        if (authentication!=null){
//            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//            model.addAttribute("user",userDetails.getUser());
//        }

        List<CartItem> cartItems = cart.getCartItems();
        if (cartItems.size()>0){
            model.addAttribute("cartItems",cartItems);
            model.addAttribute("total",cart.calCartTotal());
        }
        return "template/user/page/product/cart";

    }

}
