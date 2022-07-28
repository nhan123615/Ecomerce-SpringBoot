package com.coeding.controller.auth;

import com.coeding.entity.UserDetail;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String loginPage(Authentication user){
        if (user!=null){
            return "redirect:/";
        }else{
            return "template/user/auth/login";
        }
    }

}
