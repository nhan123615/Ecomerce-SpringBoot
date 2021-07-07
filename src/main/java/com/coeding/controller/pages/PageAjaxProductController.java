package com.coeding.controller.pages;

import java.util.ArrayList;
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

	@GetMapping("/addProductToWishList")
	public String addToWishList(@RequestParam(name = "id_product") String id, HttpServletRequest request,
			HttpServletResponse response) {
		Cookie[] arr = request.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("wishlist")) {
					txt = txt + o.getValue();
					o.setMaxAge(0);
					response.addCookie(o);
				}
			}
		}
		if (txt.isEmpty()) {
			txt = id;
		} else {
			String[] array = txt.split("a");
			int count = 0;
			for (int i = 0; i < array.length; i++) {
				if (array[i].equals(id)) {
					count++;
				}
			}
			if (count == 0) {
				txt = txt + "a" + id;
			}else {
				return "failed";
			}
		}
		Cookie c = new Cookie("wishlist", txt);
		c.setMaxAge(60 * 60 * 24);
		c.setPath("/");
		response.addCookie(c);
		return "successful";
	}

	@GetMapping("/removeProductFromWishList")
	public List<Product> removeFormWishList(@RequestParam(name = "id_product") String id, HttpServletRequest request,
			HttpServletResponse response) {
		List<Product> list = new ArrayList<Product>();
		Cookie[] arr = request.getCookies();
		String txt = "";
		String txtOutPut = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("wishlist")) {
					txt = txt + o.getValue();
					o.setMaxAge(0);
					response.addCookie(o);
				}
			}
			String ids[] = txt.split("a");
			for (int i = 0; i < ids.length; i++) {
				if (!ids[i].equals(id)) {
					if (txtOutPut.isEmpty()) {
						txtOutPut = ids[i];
					} else {
						txtOutPut = txtOutPut + "a" + ids[i];
					}
				}

			}
			Cookie c = new Cookie("wishlist", txtOutPut);
			c.setMaxAge(60 * 60 * 24);
			c.setPath("/");
			response.addCookie(c);
			if (!txtOutPut.isEmpty()) {
				String ids1[] = txtOutPut.split("a");
				for (String s : ids1) {
					if (s.isEmpty()) {
						Long id_product = Long.parseLong(txtOutPut);
						list.add(productService.findById(id_product));
					} else {
						Long id_product = Long.parseLong(s);
						list.add(productService.findById(id_product));
					}
				}
			}
		}
		return list;
	}
	
	@GetMapping("/addProductToViewList")
	public void addToViewList(@RequestParam(name = "id_product") String id, HttpServletRequest request,
			HttpServletResponse response) {
		Cookie[] arr = request.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("viewlist")) {
					txt = txt + o.getValue();
					o.setMaxAge(0);
					response.addCookie(o);
				}
			}
		}
		if (txt.isEmpty()) {
			txt = id;
		} else {
			String[] array = txt.split("a");
			int count = 0;
			for (int i = 0; i < array.length; i++) {
				if (array[i].equals(id)) {
					count++;
				}
			}
			if (count == 0) {
				txt = txt + "a" + id;
			}
		}
		Cookie c = new Cookie("viewlist", txt);
		c.setMaxAge(60 * 60 * 24);
		c.setPath("/");
		response.addCookie(c);
	}
}
