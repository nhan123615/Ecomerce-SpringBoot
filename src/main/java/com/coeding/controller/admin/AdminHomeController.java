package com.coeding.controller.admin;

import com.coeding.entity.UserDetail;
import org.springframework.security.core.Authentication;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author Lam Cong Hau
 * */
@Controller
@RequestMapping("/admin")
public class AdminHomeController {

    @GetMapping
    public String customerHomePage(Authentication authentication, Model model){
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        model.addAttribute("user",userDetails.getUser());
        return  "template/admin/index";
    }
}
