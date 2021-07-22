package com.coeding.controller.auth;

import com.coeding.entity.User;
import com.coeding.helper.UserHelper;
import com.coeding.repository.UserRepository;
import com.coeding.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/customer/password")
public class ChangePasswordController {
    private UserService userService;
    private PasswordEncoder encoder;
    private UserHelper userHelper;

    @Autowired
    public ChangePasswordController(UserService userService, PasswordEncoder encoder,UserHelper userHelper) {
        this.userService = userService;
        this.encoder = encoder;
        this.userHelper = userHelper;
    }


    @GetMapping
    public String changePasswordPage() {
        return "template/user/auth/change-password";
    }

    @PostMapping
    public String processChangePassword(
            Authentication authentication,
            @RequestParam("oldPassword")String oldPassword,
            @RequestParam("newPassword")String newPassword,
            HttpServletRequest request){
        User user = userHelper.getUser(authentication,userService);
        String message = (String) request.getSession().getAttribute("message");
        String url = "redirect:/customer";
        if (user.getPassword() !=null ){
            if (encoder.matches(oldPassword,user.getPassword())){
                user.setPassword(encoder.encode(newPassword));
                userService.saveUser(user);
                request.getSession().setAttribute("message", "Update Password success!");
            }else{
                request.getSession().setAttribute("message", "Old Password invalid !");
                url = "redirect:/customer/password";
            }
        }else{
            request.getSession().setAttribute("message", "Update Password invalid with social login !");
        }
        return url;
    }

}
