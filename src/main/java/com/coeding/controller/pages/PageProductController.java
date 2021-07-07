package com.coeding.controller.pages;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import com.coeding.entity.Type;
import com.coeding.entity.UserDetail;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * @author TranDung
 *
 */
@Controller
@RequestMapping("/product")
public class PageProductController {

    private ProductService productService;
    private CategoryService categoryService;

    @Autowired
    public PageProductController(ProductService productService, CategoryService categoryService) {
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @GetMapping
    public String productHomePage(
            HttpServletResponse response,
            HttpServletRequest request,
            Authentication authentication,
            Model model,
            @RequestParam(name = "category", required = false) Long categoryId,
            @RequestParam(name = "brand", required = false) Long brandId,
            @RequestParam(name = "type", required = false) Long typeId
    ) {
        //set cookie
//        setCookie(response, request);

        if (authentication != null) {
            LOGGER.info("check User with (authentication != null)");
            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
            model.addAttribute("user",userDetails.getUser());
        }


        if (categoryId!=null){
            model.addAttribute("products",productService.findByCategoryId(categoryId));
            model.addAttribute("countProduct",productService.findByCategoryId(categoryId).stream().count());
            model.addAttribute("categoryByProduct",categoryService.findById(categoryId));
        }

        if (categoryId!=null&&brandId!=null){
            model.addAttribute("products",productService.findByCategoryIdAndBrandId(categoryId, brandId));
            model.addAttribute("countProduct",productService.findByCategoryIdAndBrandId(categoryId, brandId).stream().count());
            model.addAttribute("categoryByProduct",categoryService.findById(categoryId));
        }

        if (categoryId!=null&&typeId!=null){
            model.addAttribute("products",productService.findByCategoryIdAndTypeId(categoryId, typeId));
            model.addAttribute("countProduct",productService.findByCategoryIdAndTypeId(categoryId, typeId).stream().count());
            model.addAttribute("categoryByProduct",categoryService.findById(categoryId));
        }


        //all null
        model.addAttribute("products",productService.findAll());
        model.addAttribute("countProduct",productService.findAll().stream().count());

    public void setCookie(HttpServletResponse response, HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        Long cartItemsCookie = Arrays.stream(cookies).filter(c->c.getName().equals("cartItems")).count();

        if (cartItemsCookie == 0){
            LOGGER.info("Set Cookie cartItems");
            Cookie cookie = new Cookie("cartItems", "");
            cookie.setHttpOnly(true);
            response.addCookie(cookie);
        }
    }


}
