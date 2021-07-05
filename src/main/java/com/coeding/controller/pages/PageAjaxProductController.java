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
		Product product = productService.findById(Long.parseLong(id));
		Cookie arr[] = request.getCookies();
		String txt = "";
		for (Cookie o : arr) {
			if (o.getName().equals("id")) {
				txt = txt + o.getValue();
				o.setMaxAge(0);
				response.addCookie(o);
			}
		}
		if (txt.isEmpty())

		{
			txt = id;
		} else {
			String[] array = txt.split("a");
			int count=0;
			for(int i=0;i<array.length;i++) {
				if(array[i].equals(id)) {
					count++;
				}
			}
			if(count == 0) {
				txt = txt + "a" + id;
			}
		}
		Cookie c = new Cookie("id", txt);
		c.setMaxAge(60 * 60 * 24);
		c.setPath("/");
		response.addCookie(c);
		return product;
	}
}
