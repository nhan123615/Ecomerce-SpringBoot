package com.coeding.controller.pages;

import com.coeding.entity.Product;
import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * author Nhanle
 */
@Controller
@RequestMapping("/")
public class PageHomeController {

	private CategoryService categoryService;
	private ProductService productService;

	@Autowired
	public PageHomeController(CategoryService categoryService, ProductService productService) {
		this.categoryService = categoryService;
		this.productService = productService;
	}

	@GetMapping
	public String customerHomePage(
			HttpServletRequest request, HttpServletResponse response,
			Authentication authentication, Model model) {
		if (authentication != null) {
			UserDetail userDetails = (UserDetail) authentication.getPrincipal();
			model.addAttribute("user", userDetails.getUser());
		}

		Map<String,List<Product>> productByCategory = new HashMap<>();
		List<Product> listProduct = productService.findAll();

		categoryService.findAll().forEach(c->{
			productByCategory.put(c.getName(),productByCategory(listProduct,c.getName()));
		});

		model.addAttribute("productByCategory",productByCategory);

		return "template/user/page/index";
	}
	


	public List<Product> productByCategory(List<Product> list,String categoryName){
		return list.stream()
				.filter(p->p.getCategory().getName().equals(categoryName))
				.collect(Collectors.toList());
	}

//	@GetMapping("test")
//	public String testHomePage(Authentication authentication, Model model) {
//		if (authentication != null) {
//			UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//			model.addAttribute("user", userDetails.getUser());
//		}
//
//		return "ajax";
//	}
}
