package com.coeding.controller.admin;

import com.coeding.entity.Brand;
import com.coeding.entity.Type;
import com.coeding.entity.UserDetail;
import com.coeding.service.BrandService;
import com.coeding.service.CategoryService;
import com.coeding.service.TypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Locale;

/**
 * 
 * @author Nhanle
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminBrandController {


	private BrandService brandService;

	@Autowired
	public AdminBrandController(BrandService brandService) {
		this.brandService = brandService;
	}

	@GetMapping("/brand")
	public String show(Authentication authentication, Model model) {

		model.addAttribute("list", brandService.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/brand/list-brand";
	}
	
	@GetMapping(value = "/brand/new")
	public String newType(Authentication authentication, Locale locale, Model model) {

		model.addAttribute("brand", new Brand());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/brand/form-add-brand";
	}

	@PostMapping(value = "/brand/new")
	public String saveType(Brand brand, Locale locale, Model model,HttpServletRequest request) {
		brandService.save(brand);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Submit success !");
		return "redirect:/admin/brand";
	}

	@GetMapping(value = "/brand/edit")
	public String edit(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model) {
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		model.addAttribute("brand", brandService.findById(id));
		return "template/admin/brand/form-edit-brand";
	}

	@PostMapping(value = "/brand/update")
	public String update(Brand brand, Locale locale, Model model, HttpServletRequest request) {
		Brand b = brandService.findById(brand.getId());
		b.setName(brand.getName());
		brandService.save(b);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Update success !");

		return "redirect:/admin/brand";
	}
}
