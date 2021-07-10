package com.coeding.controller;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import com.coeding.entity.Product;
import com.coeding.entity.Type;
import com.coeding.service.BrandService;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import com.coeding.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.*;

/**
 * author Nhanle
 * */
@ControllerAdvice
public class ControllerAdvisor {


    private CategoryService categoryService;
    private BrandService brandService;
    private ProductService productService;
    private TypeService typeService;

    @Autowired
    public ControllerAdvisor(CategoryService categoryService, BrandService brandService, ProductService productService, TypeService typeService) {
        this.categoryService = categoryService;
        this.brandService = brandService;
        this.productService = productService;
        this.typeService = typeService;
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
        return productService.findAll();
    }

//commit

}
