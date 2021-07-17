package com.coeding.controller.admin;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import com.coeding.entity.UserDetail;
import com.coeding.service.BrandService;
import com.coeding.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

/**
 * 
 * @author Nhanle
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminCategoryController {


	private CategoryService categoryService;

	@Autowired
	public AdminCategoryController(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@GetMapping("/category")
	public String show(Authentication authentication, Model model) {

		model.addAttribute("list", categoryService.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/category/list-category";
	}
	
	@GetMapping(value = "/category/new")
	public String newType(Authentication authentication, Locale locale, Model model) {

		model.addAttribute("category", new Category());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/category/form-add-category";
	}

	@PostMapping(value = "/category/new")
	public String saveType(Category category, Locale locale, Model model, HttpServletRequest request) {
		category.setEnabled(true);
		categoryService.save(category);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Submit success !");
		return "redirect:/admin/category";
	}

	@GetMapping(value = "/category/edit")
	public String edit(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model) {
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		model.addAttribute("category", categoryService.findById(id));
		return "template/admin/category/form-edit-category";
	}

	@PostMapping(value = "/category/update")
	public String update(Category category, Locale locale, Model model,HttpServletRequest request) {
		Category c = categoryService.findById(category.getId());
		c.setEnabled(category.isEnabled());
		c.setName(category.getName());
		categoryService.save(c);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Submit success !");
		return "redirect:/admin/category";
	}
}
