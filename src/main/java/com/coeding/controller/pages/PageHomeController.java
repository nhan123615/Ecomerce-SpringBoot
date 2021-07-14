package com.coeding.controller.pages;

import com.coeding.entity.BannerGallery;
import com.coeding.entity.Product;
import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.helper.CookieHelper;
import com.coeding.service.BannerGalleryService;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.security.Principal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * author Nhanle
 */
@Slf4j
@Controller
@RequestMapping("/")
public class PageHomeController {
	private BannerGalleryService bannerGalleryService;
	private CategoryService categoryService;
	private ProductService productService;
	private CookieHelper cookieHelper;

	@Autowired
	public PageHomeController(CategoryService categoryService, ProductService productService,
			BannerGalleryService bannerGalleryService, CookieHelper cookieHelper) {
		this.categoryService = categoryService;
		this.productService = productService;
		this.cookieHelper = cookieHelper;
		this.bannerGalleryService = bannerGalleryService;
	}

	@GetMapping
	public String customerHomePage(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication, Model model) {
		if (authentication != null) {
			UserDetail userDetails = (UserDetail) authentication.getPrincipal();
			model.addAttribute("user", userDetails.getUser());
		}

		Map<String, List<Product>> productByCategory = new HashMap<>();
		List<Product> listProduct = productService.findAllIgnoreStatus();

		categoryService.findAll().forEach(c -> {
			productByCategory.put(c.getName(), productByCategory(listProduct, c.getName()));
		});

		model.addAttribute("productByCategory", productByCategory);
		model.addAttribute("viewlist", cookieHelper.getCookieByName(request, productService, "viewlist"));
		List<BannerGallery> bannerList = bannerGalleryService.findAll();
		model.addAttribute("listBanner", bannerList);
		return "template/user/page/index";
	}

	public List<Product> productByCategory(List<Product> list, String categoryName) {
		return list.stream().filter(p -> p.getCategory().getName().equals(categoryName)).collect(Collectors.toList());
	}

	@GetMapping("/banner/display/{id}")
	@ResponseBody
	public void showBannerImage(@PathVariable("id") Long id, HttpServletResponse response)
			throws ServletException, IOException {
		log.info("showBannerImage: ");
		BannerGallery bannerGallery = bannerGalleryService.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (bannerGallery != null) {
			response.getOutputStream().write(bannerGallery.getImage());
		}
		response.getOutputStream().close();
	}
}
