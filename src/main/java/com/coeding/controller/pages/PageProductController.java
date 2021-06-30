package com.coeding.controller.pages;

import com.coeding.entity.*;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/product")
public class PageProductController {
    private Long categoryId;
    private ProductService productService;
    private CategoryService categoryService;

    @Autowired
    public PageProductController(ProductService productService, CategoryService categoryService) {
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @GetMapping
    public String productHomePage(
            Authentication authentication,
            Model model,
            @RequestParam(name = "category",required = false) Long categoryId,
            @RequestParam(name = "brand",required = false) Long brandId,
            @RequestParam(name = "type",required = false) Long typeId
    ){

        if (authentication!=null){
            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
            model.addAttribute("user",userDetails.getUser());
        }

        if (categoryId==null&&brandId==null&&typeId==null){
            //all null
            model.addAttribute("products",productService.findAll());
            model.addAttribute("countProduct",productService.findAll().stream().count());

            Set<Brand> brandByProduct = new HashSet<>();
            Set<String> typeByProduct = new HashSet<>();
            productService.findAll().forEach(p-> {
                brandByProduct.add(p.getBrand());
                typeByProduct.add(p.getType().getName());
            });
            model.addAttribute("brandByProduct",brandByProduct);
            model.addAttribute("typeByProduct",typeByProduct);
        }

        if (categoryId!=null){
            this.categoryId = categoryId;
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
        model.addAttribute("allProducts",productService.findAll());
        return "template/user/page/product/shop-by-category";
    }


    @GetMapping("/display/{n}&{id}")
    @ResponseBody
    public void showImage(@PathVariable("n") Integer n, @PathVariable("id") Long id, HttpServletResponse response) throws IOException {

        Product product = productService.findById(id);
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        if (product.getImages().size() > n) {
            response.getOutputStream().write(product.getImages().get(n).getImage());
        }
        response.getOutputStream().close();
    }

    public Long getCategoryId(){
        return this.categoryId;
    }

}
