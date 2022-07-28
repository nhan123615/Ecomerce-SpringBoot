package com.coeding.controller.user;

import com.coeding.entity.UserDetail;
import com.coeding.helper.CookieHelper;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/customer/wishlist")
public class CustomerWishlistController {
	
    private CookieHelper cookieHelper;
    private ProductService productService;

    @Autowired
    public CustomerWishlistController(CookieHelper cookieHelper, ProductService productService) {
        this.cookieHelper = cookieHelper;
        this.productService = productService;
    }

    @GetMapping
    public String customerWishlistPage(Authentication authentication, Model model, HttpServletRequest res){
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user",userDetails.getUser());

        model.addAttribute("wishlist", cookieHelper.getCookieByName(res,productService,"wishlist"));
        return  "template/user/customer/wishlist/wishlist-page";
    }
    
}
