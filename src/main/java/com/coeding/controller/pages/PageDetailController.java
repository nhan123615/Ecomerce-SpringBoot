package com.coeding.controller.pages;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coeding.entity.Customer;
import com.coeding.entity.Product;
import com.coeding.entity.Rating;
import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.helper.UserHelper;
import com.coeding.service.CustomerService;
import com.coeding.service.ProductService;
import com.coeding.service.UserService;

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
	private CustomerService customerService;
	private UserService userService;
	private UserHelper userHelper;

	@Autowired
	public PageDetailController(ProductService productService, CustomerService customerService, UserService userService,
			UserHelper userHelper) {
		this.productService = productService;
		this.customerService = customerService;
		this.userHelper = userHelper;
		this.userService = userService;
	}

	@GetMapping(value = "/detail")
	public String view(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model,
			HttpServletRequest res) {
		log.info("product detail {}.", locale);
		if (authentication != null) {
			User user = userHelper.getUser(authentication, userService);
			model.addAttribute("user", user);
		}

		Product p = productService.findById(id);
		model.addAttribute("product", p);
		List<String> listColor = Arrays.asList(p.getProductColor().split(","));
		for (String color : listColor) {
			model.addAttribute(color, color);
		}

		List<Product> listProductByCategory = productService.findByCategoryId(p.getCategory().getId());
		log.info("listProductByCategory " + listProductByCategory.size());
		model.addAttribute("listProductByCategory", listProductByCategory);
		model.addAttribute("allProducts", productService.findAll());

		Cookie[] cl = res.getCookies();
		List<Product> viewlist = new ArrayList<Product>();
		if (cl != null) {
			for (Cookie o : cl) {
				if (o.getName().equals("viewlist")) {
					if (!o.getValue().isEmpty()) {
						String txt[] = o.getValue().split("a");
						for (String s : txt) {
							log.info("cookie: " + s);
							viewlist.add(productService.findById(Long.parseLong(s)));
						}
					}
				}
			}
		}
		model.addAttribute("viewlist", viewlist);
		return "template/user/page/product/product-detail";
	}

	@PostMapping("/review")
	public @ResponseBody String review(@RequestParam(value = "idUser") Long idUser,
			@RequestParam(value = "idProduct") Long idProduct, Rating rating, Model model) {
		log.info("review");
		log.info("rating: " + rating.getId() + ", " + rating.getStarNumber() + ", " + rating.getReview());
		if (idUser != null) {
			Customer customer = customerService.findByUserId(idUser);
			log.info("customer: " + customer.getId());
			log.info("product: " + idProduct);
			return "success";
		}
		return "failed";
	}

}
