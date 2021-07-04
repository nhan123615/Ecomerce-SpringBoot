package com.coeding.controller.pages;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coeding.entity.Product;
import com.coeding.service.ProductService;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@Controller
@RequestMapping("/product")
public class PageWhishListController {
	@Autowired
	private ProductService productService;

	@GetMapping("/whishlist")
	public String cartPage(HttpServletRequest res, Model model) {
		Cookie cl[] = res.getCookies();
		List<Product> whishlist = new ArrayList<Product>();
		for (int i = 0; i < cl.length; i++) {
			if (cl[i].getName().matches("[0-9]+")) {
			 whishlist.add(productService.findById(Long.parseLong(cl[i].getName())));
			}
		}
		model.addAttribute("whishlist", whishlist);
		return "template/user/page/product/whishlist";
	}
}
