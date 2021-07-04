package com.coeding.controller.pages;

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

/**
 * 
 * @author Lam Cong Hau
 *
 */
@RestController
@RequestMapping(path = "/api/whish-list", produces = "application/json")
@CrossOrigin(origins = "*")
public class PageAjaxProductController {
	@Autowired
	ProductService productService;

	@GetMapping("/addproduct")
	public boolean addToWhishList(@RequestParam(name = "id_product") String id, HttpServletRequest request,
			HttpServletResponse response) {
		Product product = productService.findById(Long.parseLong(id));
		Cookie[] clientCookies = request.getCookies();
		boolean found = false;
		for (int i = 0; i < clientCookies.length; i++) {
			if (clientCookies[i].getName().equals(id)) {
				clientCookies[i].setMaxAge(0);
				clientCookies[i].setPath("/");
				response.addCookie(clientCookies[i]);
				found = true;
				break;
			}
		}
		if (!found) {
			Cookie c = new Cookie(id, "1");
			c.setPath("/");
			c.setMaxAge(60 * 60 * 24);
			response.addCookie(c);
		}
		return found;
	}
}
