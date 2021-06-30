package com.coeding.controller.filter;

import com.coeding.controller.pages.PageProductController;
import com.coeding.entity.Product;
import com.coeding.entity.Type;
import com.coeding.entity.User;
import com.coeding.repository.UserRepository;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * author Nhanle
 */
@RestController
@RequestMapping(path = "/filter", produces = "application/json")
@CrossOrigin(origins = "*")
public class PageProductFilterController {


    private ProductService productService;
    private PageProductController productController;

    @Autowired
    public PageProductFilterController(ProductService productService, PageProductController productController) {
        this.productService = productService;
        this.productController = productController;
    }

    @GetMapping("/product")
    public  List<Product> userCheckboxHomePage(
            @RequestParam(name = "brand", required = false) List<Long> listBrandId,
            @RequestParam(name = "type", required = false) List<String> listType
            ) {
        System.err.println(listBrandId);
        System.err.println(listType);
        System.err.println(productController.getCategoryId());
        List<Product> products = new ArrayList<>();



        Long categoryId = productController.getCategoryId();
        if (categoryId!=null){
            //        filter by Brand
            if (listBrandId != null) {
                products =  getProductByCategoryAndBrand(categoryId,listBrandId);
            }

            //filter by Type
            if (listType!=null){
                products =  getProductByCategoryAndType(productService.findAll(),categoryId,listType);
            }

            //filter by Type and Brand

            if (listBrandId !=null && listType !=null){
                List<Product> listByCategoryAndBrand = getProductByCategoryAndBrand(categoryId,listBrandId);
                products = getProductByCategoryAndType(listByCategoryAndBrand,categoryId,listType);
            }
            //all
            if (listBrandId==null&&listType==null){
                products =  productService.findAll();
            }

        }else{
//        filter by Brand
            if (listBrandId != null) {
                products =  getProductByBrand(listBrandId);
            }
            //filter by Type
            if (listType!=null){
                products =  getProductByType(productService.findAll(),listType);
            }

            //filter by Type and Brand

            if (listBrandId !=null && listType !=null){
                List<Product> listByBrand =  getProductByBrand(listBrandId);
                products = getProductByType(listByBrand,listType);
            }

            //all
            if (listBrandId==null&&listType==null){
                products =  productService.findAll();
            }

        }
        return products;
    }


    public  List<Product> getProductByCategoryAndType(List<Product>products, Long categoryId,List<String> typeList){
        List<Product> list = new ArrayList<>();
        typeList.forEach(t->{
            products.stream()
                    .filter(p->p.getCategory().getId() == categoryId && p.getType().getName().equals(t))
                    .forEach(p->list.add(p));
        });
        return list;
    }

    public   List<Product> getProductByCategoryAndBrand(Long categoryId,List<Long> brandIdList){
        List<Product> list = new ArrayList<>();
        brandIdList.forEach(id -> {
            productService.findByCategoryIdAndBrandId(categoryId,id).forEach(p->list.add(p));
        });
        return list;
    }


    public  List<Product> getProductByType(List<Product>products,List<String> typeList){
        List<Product> list = new ArrayList<>();
        typeList.forEach(t->{
            products.stream()
                    .filter(p->p.getType().getName().equals(t))
                    .forEach(p->list.add(p));
        });
        return list;
    }


    public  List<Product> getProductByBrand(List<Long> brandIdList){
        List<Product> list = new ArrayList<>();
        brandIdList.forEach(id -> {
            productService.findByBrandId(id).forEach(p->list.add(p));
        });
        return list;
    }
}
