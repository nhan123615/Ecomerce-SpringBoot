package com.coeding.controller.user;

import com.coeding.entity.Cart;
import com.coeding.entity.Customer;
import com.coeding.entity.Product;
import com.coeding.entity.UserDetail;
import com.coeding.helper.CookieHelper;
import com.coeding.service.CustomerService;

import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * author TranDung
 * */
@Controller
@RequestMapping("/customer")
public class CustomerHomeController {
	
    private Cart cart;
    private CookieHelper cookieHelper;
    private ProductService productService;
    @Autowired
    public CustomerHomeController(Cart cart,CookieHelper cookieHelper, ProductService productService) {
        this.cart = cart;
        this.cookieHelper = cookieHelper;
        this.productService = productService;
    }

    @GetMapping
    public String customerHomePage(Authentication authentication, Model model, HttpServletRequest res){
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user",userDetails.getUser());
        List<Product> viewList = cookieHelper.getCookieByName(res,productService,"viewlist");

        if (cart.getCartItems().size()>0){
             return "redirect:/customer/product/checkout-page";
        }

        if (viewList.size()>0){
            return "redirect:/customer/recent";
        }

        return  "redirect:/customer/info";
    }
    
}
