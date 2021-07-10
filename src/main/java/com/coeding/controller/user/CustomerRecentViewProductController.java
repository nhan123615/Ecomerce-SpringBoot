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

/**
 * author NhanLe
 * */
@Controller
@RequestMapping("/customer/recent")
public class CustomerRecentViewProductController {

    private CookieHelper cookieHelper;
    private ProductService productService;

    @Autowired
    public CustomerRecentViewProductController(CookieHelper cookieHelper, ProductService productService) {
        this.cookieHelper = cookieHelper;
        this.productService = productService;
    }

    @GetMapping
    public String customerRecentPage(Authentication authentication, Model model, HttpServletRequest res){
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        model.addAttribute("user",userDetails.getUser());

        model.addAttribute("viewlist", cookieHelper.getCookieByName(res,productService,"viewlist"));
        return  "template/user/customer/recentview/recent-view";
    }
    
}
