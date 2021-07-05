package com.coeding.controller.pages;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.coeding.entity.Product;
import com.coeding.service.ProductService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@RestController
@RequestMapping(path = "/api/wish-list", produces = "application/json")
@CrossOrigin(origins = "*")
public class PageAjaxProductController {
	@Autowired
	ProductService productService;

	@GetMapping("/getproduct")
	public Product addToWhishList(@RequestParam(name = "id_product") String id, HttpServletRequest request,
			HttpServletResponse response) {
		ObjectMapper objectMapper = new ObjectMapper();
		Product product = productService.findById(Long.parseLong(id));
		Cookie[] clientCookies = request.getCookies();
		Long wishListCookiesCount = Arrays.stream(clientCookies).filter(c -> c.getName().equals("wishItems")).count();
		List<Product> list = new ArrayList<Product>();
		list.add(product);
		if (wishListCookiesCount == 0) {
			Cookie c = new Cookie("wishItems", id);
			c.setPath("/");
			c.setMaxAge(60 * 60 * 24);
			response.addCookie(c);
		}else {
			System.out.println("else");
			for(int i = 0;i < clientCookies.length; i++) {
				if(clientCookies[i].getName().equals("wishItems")) {
					clientCookies[i].setValue(clientCookies[i].getValue()+id);
					response.addCookie(clientCookies[i]);
				}
			}
		}
		return product;
	}
}
