package com.coeding.controller.pages;

import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/")
public class PageHomeController {


    @GetMapping
    public String customerHomePage(Authentication authentication, Model model){
        if (authentication!=null){
            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
            model.addAttribute("user",userDetails.getUser());
        }



        return  "template/user/page/index";
    }

    @GetMapping("test")
    public String testHomePage(Authentication authentication, Model model){
        if (authentication!=null){
            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
            model.addAttribute("user",userDetails.getUser());
        }

        return  "ajax";
    }

//commit
}
