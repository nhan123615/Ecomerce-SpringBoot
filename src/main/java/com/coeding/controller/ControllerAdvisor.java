package com.coeding.controller;

import com.coeding.entity.*;
import com.coeding.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * author Nhanle
 * */
@ControllerAdvice
public class ControllerAdvisor  extends DefaultHandlerExceptionResolver  {


    private CategoryService categoryService;
    private BrandService brandService;
    private ProductService productService;
    private TypeService typeService;
    private UserService userService;

    @Autowired
    public ControllerAdvisor(CategoryService categoryService, BrandService brandService, ProductService productService, TypeService typeService,UserService userService) {
        this.categoryService = categoryService;
        this.brandService = brandService;
        this.productService = productService;
        this.typeService = typeService;
        this.userService = userService;
    }


    @ModelAttribute("user")
    public User user(Authentication authentication){
        User model = null;
        if (authentication != null) {
            if (authentication.getPrincipal() instanceof  UserDetail){
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

    @ModelAttribute("categories")
    public List<Category> categories(){
        return  categoryService.findAll();
    }


    @ModelAttribute("brands")
    public List<Brand> brands(){
        return  brandService.findAll();
    }



    @ModelAttribute("brandsByCategory")
    public Map<String, Set<Brand>> filterBrandByCategory(){
        Map<String, Set<Brand>> map = new HashMap<>();
        categoryService.findAll().forEach(c->{
            Set<Brand> brands = new HashSet<>();
            productService.findByCategoryId(c.getId()).forEach(p->brands.add(p.getBrand()));
            map.put(c.getName(),brands);
        });
        return map;
    }

    @ModelAttribute("typeByCategory")
    public Map<String, Set<Type>> filterTypeByCategory(){
        Map<String, Set<Type>> map = new HashMap<>();
        categoryService.findAll().forEach(c->{
            Set<Type> types = new HashSet<>();
            typeService.findByCategoryId(c.getId()).forEach(t->types.add(t));
            map.put(c.getName(),types);
        });
        return map;
    }



    @ModelAttribute("allProducts")
    public List<Product> allProducts(){
        return productService.findAllIgnoreStatus();
    }


    @ModelAttribute("topProducts")
    public List<Product> topProducts(){
        List<Product> list = new ArrayList<>();
        productService.findTop5().forEach(pid->list.add(productService.findById(pid)));
        return list;
    }



//commit

}
