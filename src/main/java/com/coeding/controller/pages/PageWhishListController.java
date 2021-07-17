package com.coeding.controller.pages;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.coeding.entity.UserDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coeding.entity.Product;
import com.coeding.service.ProductService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@Slf4j
@Controller
@RequestMapping("/product")
public class PageWhishListController {
	@Autowired
	private ProductService productService;

	@GetMapping("/wishlist")
	public String cartPage(Authentication authentication,HttpServletRequest res, Model model) {
//		if (authentication!=null){
//			UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//			model.addAttribute("user",userDetails.getUser());
//		}

		log.info("wishlist: ");
		Cookie[] cl = res.getCookies();
		List<Product> whishlist = new ArrayList<Product>();
		if (cl != null) {
			for (Cookie o : cl) {
				if (o.getName().equals("wishlist")) {
					if (!o.getValue().isEmpty()) {
						String txt[] = o.getValue().split("a");
						for (String s : txt) {
							Long id = Long.parseLong(s);
							whishlist.add(productService.findById(id));
						}
					}
				}
			}
		}
		model.addAttribute("wishlist", whishlist);
		return "template/user/page/product/wishlist";
	}



}
