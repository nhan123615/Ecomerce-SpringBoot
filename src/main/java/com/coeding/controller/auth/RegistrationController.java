package com.coeding.controller.auth;

import com.coeding.entity.User;
import com.coeding.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/register")
public class RegistrationController {
    private UserRepository userRepo;
    private PasswordEncoder encoder;

    @Autowired
    public RegistrationController(UserRepository userRepo, PasswordEncoder encoder) {
        this.userRepo = userRepo;
        this.encoder = encoder;
    }


    @ModelAttribute(name = "userRegist")
    public User user() {
        return new User();
    }

    @GetMapping
    public String registerPage(Model model) {
        return "template/user/auth/register";
    }

    @PostMapping
    public String processRegister(@ModelAttribute("userRegist") User user, Model model, HttpServletRequest request) {

        int countUser = userRepo.countByUsername(user.getUsername());
        int countEmail = userRepo.countByEmail(user.getEmail());
        String message = (String) request.getSession().getAttribute("message");
        if (countUser == 0) {
            if (countEmail == 0) {
                userRepo.save(user.toUser(encoder));
                request.getSession().setAttribute("message", "Register success!");
            } else {
                request.getSession().setAttribute("message", "Email invalid !");
            }
        } else {
            request.getSession().setAttribute("message", "Username invalid !");
        }
        return "redirect:/login";
    }
}
