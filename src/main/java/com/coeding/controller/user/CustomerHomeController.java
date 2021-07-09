package com.coeding.controller.user;

import com.coeding.entity.Customer;
import com.coeding.entity.UserDetail;
import com.coeding.service.CustomerService;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * author TranDung
 * */
@Controller
@RequestMapping("/customer")
public class CustomerHomeController {
	

    @GetMapping
    public String customerHomePage(Authentication authentication, Model model){
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();

        model.addAttribute("user",userDetails.getUser());
        return  "template/user/customer/index";
    }
    
}
