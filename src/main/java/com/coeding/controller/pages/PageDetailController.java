package com.coeding.controller.pages;

import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.entity.Product;
import com.coeding.entity.UserDetail;
import com.coeding.service.ProductService;

import lombok.extern.slf4j.Slf4j;
/**
 * @author Lam Cong Hau
 *
 */
@Slf4j
@Controller
@RequestMapping("/product")
public class PageDetailController {
	private ProductService productService;

	@Autowired
	public PageDetailController(ProductService productService) {
		this.productService = productService;
	}

	@GetMapping(value = "/detail")
	public String view(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model) {
		log.info("product detail {}.", locale);
		Product p = productService.findById(id);
		model.addAttribute("product", p);
		List<String> listColor = Arrays.asList(p.getProductColor().split(","));
		for (String color : listColor) {
			model.addAttribute(color, color);
		}
		if (authentication != null) {
			log.info("check User with (authentication != null)");
			UserDetail userDetails = (UserDetail) authentication.getPrincipal();
			model.addAttribute("user", userDetails.getUser());
		}
		return "template/user/page/product/product-detail";
	}
}
