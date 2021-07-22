package com.coeding.controller.pages;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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
import com.coeding.service.RatingService;
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
	private RatingService ratingService;

	@Autowired
	public PageDetailController(ProductService productService, CustomerService customerService, UserService userService,
			UserHelper userHelper, RatingService ratingService) {
		this.productService = productService;
		this.customerService = customerService;
		this.userHelper = userHelper;
		this.userService = userService;
		this.ratingService = ratingService;
	}

	@GetMapping(value = "/detail")
	public String view(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model,
			HttpServletRequest res) {
		log.info("product detail {}.", locale);
		// Review
		if (authentication != null) {
			User user = userHelper.getUser(authentication, userService);
			model.addAttribute("user", user);
			Customer customer = customerService.findByUserId(user.getId());
			if (customer != null) {
				Rating r = ratingService.findByCustomerIdAndProductId(customer.getId(), id);
				model.addAttribute("rating", r);
			}
		}
		Double avgStar = ratingService.avgStarByProductId(id);
		Integer numberReview = ratingService.countReviewByProductId(id);
		model.addAttribute("avgStar", avgStar);
		model.addAttribute("numberReview", numberReview);
		for (int i = 1; i <= 5; i++) {
			model.addAttribute("star" + i, ratingService.percentOfStar(id, i));
			model.addAttribute("nReview" + i, ratingService.countReviewByProductIdAndStarNumber(id, i));
		}
		//
		Product p = productService.findById(id);
		model.addAttribute("product", p);
		List<String> listColor = Arrays.asList(p.getProductColor().split(","));
		for (String color : listColor) {
			model.addAttribute(color, color);
		}

		List<Product> listProductByCategory = productService.findByCategoryId(p.getCategory().getId());
		model.addAttribute("listProductByCategory", listProductByCategory);
		model.addAttribute("allProducts", productService.findAll());
		// review
		Map<Long, Integer> mapReviewByCategory = ratingService.findAllReviewByList(listProductByCategory);
		model.addAttribute("mapReviewByCategory", mapReviewByCategory);
		Map<Long, Double> mapAvgStarByCategory = ratingService.findAllAvgStarByList(listProductByCategory);
		model.addAttribute("mapAvgStarByCategory", mapAvgStarByCategory);
		
		
		Cookie[] cl = res.getCookies();
		List<Product> viewlist = new ArrayList<Product>();
		if (cl != null) {
			for (Cookie o : cl) {
				if (o.getName().equals("viewlist")) {
					if (!o.getValue().isEmpty()) {
						String txt[] = o.getValue().split("a");
						for (String s : txt) {
							viewlist.add(productService.findById(Long.parseLong(s)));
						}
					}
				}
			}
		}
		model.addAttribute("viewlist", viewlist);
		// review
		Map<Long, Integer> mapReviewByView = ratingService.findAllReviewByList(viewlist);
		model.addAttribute("mapReviewByView", mapReviewByView);
		Map<Long, Double> mapAvgStarByView = ratingService.findAllAvgStarByList(viewlist);
		model.addAttribute("mapAvgStarByView", mapAvgStarByView);
		return "template/user/page/product/product-detail";
	}

	@PostMapping("/review")
	public String review(User user, Product product, Rating rating, Model model, HttpServletRequest request) {
		log.info("review");
		if (user != null) {
			if (user.getRole().equals("ROLE_USER")) {
				Customer customer = customerService.findByUserId(user.getId());
				if (customer != null) {
					Rating ratingExists = ratingService.findByCustomerIdAndProductId(customer.getId(), product.getId());
					if (ratingExists != null) {
						ratingExists.setReview(rating.getReview());
						ratingExists.setStarNumber(rating.getStarNumber());
						ratingService.save(ratingExists);
					} else {
						Rating r = new Rating();
						r.setCustomer(customer);
						r.setProduct(product);
						r.setReview(rating.getReview());
						r.setStarNumber(rating.getStarNumber());
						ratingService.save(r);
					}
					request.getSession().setAttribute("message", "review sucessful!");
					return "redirect:/product/detail?id=" + product.getId();
				} else {
					request.getSession().setAttribute("message", "invalid, please enter your information!");
					return "redirect:/customer/info";
				}
			} else {
				request.getSession().setAttribute("message", "invalid, admin has no rights!");
				return "redirect:/product/detail?id=" + product.getId();
			}
		}
		request.getSession().setAttribute("message", "invalid, please login!");
		return "redirect:/login";
	}

}
