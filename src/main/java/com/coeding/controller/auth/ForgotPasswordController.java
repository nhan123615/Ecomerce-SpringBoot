package com.coeding.controller.auth;

import com.coeding.entity.ResetPassword;
import com.coeding.entity.User;
import com.coeding.helper.EmailHelper;
import com.coeding.repository.UserRepository;
import com.coeding.service.ResetPasswordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

@Controller
@RequestMapping("/forgot-password")
public class ForgotPasswordController {
    private UserRepository userRepo;
    private ResetPasswordService resetPasswordService;
    private PasswordEncoder encoder;
    private EmailHelper emailHelper;

    @Autowired
    public ForgotPasswordController(UserRepository userRepo, ResetPasswordService resetPasswordService, PasswordEncoder encoder,EmailHelper emailHelper) {
        this.userRepo = userRepo;
        this.resetPasswordService = resetPasswordService;
        this.encoder = encoder;
        this.emailHelper = emailHelper;
    }


    @ModelAttribute(name = "forgotUser")
    public User user() {
        return new User();
    }



    @GetMapping
    public String forgotPage() {
        return "template/user/auth/forgot-password";
    }



    @PostMapping
    public String processForgot(@ModelAttribute("forgotUser") User user, Model model, HttpServletRequest request) {
        User forgotUser = userRepo.findByUsernameAndEmail(user.getUsername(),user.getEmail());
        String message = (String) request.getSession().getAttribute("message");
        String viewUrl = "redirect:/forgot-password";
        if (forgotUser!=null){
            String tokenGenerator = UUID.randomUUID().toString().replace("-","");
            ResetPassword resetUser = resetPasswordService.findByUser(forgotUser);
            if (resetUser!=null){
                resetUser.setResetToken(tokenGenerator);
                resetPasswordService.save(resetUser);
            }else{
                resetPasswordService.save(new ResetPassword(tokenGenerator,forgotUser));
            }
            //sending email
            String content = "<p>Here is your reset password: <b>"+tokenGenerator+"</b></p>";
            emailHelper.send(user.getEmail(),"Reset password code",content);
            request.getSession().setAttribute("message", "Your reset code sent via your email.");
            model.addAttribute("token",new ResetPassword());
            viewUrl = "template/user/auth/submit-token";
        }else{
            request.getSession().setAttribute("message", "username or email invalid!");
        }

        return viewUrl;
    }

    @PostMapping("/submit-token")
    public String processSubmitToken(@ModelAttribute("token") ResetPassword userForgot, Model model, HttpServletRequest request) {
        String token = userForgot.getResetToken();
        ResetPassword findUserByToken = resetPasswordService.findByResetToken(token);
//        String viewUrl = "redirect:/forgot-password/submit-token";
        String viewUrl = "template/user/auth/submit-token";
        if (findUserByToken !=null){
            User forgotUser = findUserByToken.getUser();
            model.addAttribute("forgotUser",forgotUser);
            viewUrl = "template/user/auth/update-password";
        }else{
            request.getSession().setAttribute("message", "Reset code invalid!");
        }

        return viewUrl;
    }



    @PostMapping("/update-password")
    public String processUpdatePassword(@ModelAttribute("forgotUser") User forgotUser, Model model, HttpServletRequest request) {
        //update user password
        User updateUser = userRepo.findById(forgotUser.getId()).get();
        updateUser.setPassword(encoder.encode(forgotUser.getPassword()));
        userRepo.save(updateUser);
        //update new token
        String newTokenGenerator = UUID.randomUUID().toString().replace("-","");
        ResetPassword updateToken = resetPasswordService.findByUser(updateUser);
        updateToken.setResetToken(newTokenGenerator);
        resetPasswordService.save(updateToken);

        request.getSession().setAttribute("message", "Reset password success!");

        return "template/user/auth/update-password-success";
    }




}
