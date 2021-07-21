package com.coeding.helper;


import com.coeding.entity.Product;
import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.service.ProductService;
import com.coeding.service.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * author Nhanle
 * */
@Component
public class UserHelper {
    public User getUser(Authentication authentication, UserService userService){
        User model = null;
        if (authentication != null) {
            if (authentication.getPrincipal() instanceof UserDetail){
                UserDetail userDetails = (UserDetail) authentication.getPrincipal();
                model = userDetails.getUser();
            }
            if (authentication.getPrincipal() instanceof OAuth2User) {
                OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
                model = userService.findByEmail(String.valueOf(oAuth2User.getAttributes().get("email")));
            }
        }
        return model;
    }

}
