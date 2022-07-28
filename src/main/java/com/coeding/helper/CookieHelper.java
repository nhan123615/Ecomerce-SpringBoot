package com.coeding.helper;


import com.coeding.config.EmailConfig;
import com.coeding.entity.Product;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;


@Component
public class CookieHelper {

    public List<Product> getCookieByName(HttpServletRequest res, ProductService productService,String cookieName){
        Cookie[] cl = res.getCookies();
        List<Product> list =  new ArrayList<Product>();;
        if (cl != null) {
            for (Cookie o : cl) {
                if (o.getName().equals(cookieName)) {
                    if (!o.getValue().isEmpty()) {
                        String txt[] = o.getValue().split("a");
                        for (String s : txt) {
                            Long id = Long.parseLong(s);
                            list.add(productService.findById(id));
                        }
                    }
                }
            }
        }
        return list;
    }

}
