package com.coeding.controller.admin;

import java.io.IOException;
import java.util.Locale;
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
import com.coeding.entity.Type;
import com.coeding.entity.UserDetail;
import com.coeding.service.CategoryService;
import com.coeding.service.TypeService;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminTypeController {
	private static final Logger logger = LoggerFactory.getLogger(AdminTypeController.class);
	@Autowired
	CategoryService categoryService;
	@Autowired
	TypeService typeService;

	@GetMapping("/type")
	public String show(Authentication authentication, Model model) {
		model.addAttribute("list", typeService.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/type/list-type";
	}
	
	@GetMapping(value = "/type/new")
	public String newType(Authentication authentication, Locale locale, Model model) {
		logger.info("get : newType");
		model.addAttribute("categories", categoryService.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/type/form-add-type";
	}

	@PostMapping(value = "/type/new")
	public String saveType(Type type, Locale locale, Model model, HttpServletRequest request) {
		logger.info("post : saveType");
		typeService.save(type);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Submit success !");
		return "redirect:/admin/type";
	}

	@GetMapping(value = "/type/edit")
	public String edit(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale, Model model) {
		Type t = typeService.findById(id);
		model.addAttribute("type", t);
		model.addAttribute("categories", categoryService.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/type/form-edit-type";
	}

	@PostMapping(value = "/type/update")
	public String update(Type type, Locale locale, Model model,HttpServletRequest request) throws IOException {
		Type t = typeService.findById(type.getId());
		t.setCategory(type.getCategory());
		t.setName(type.getName());
		typeService.save(t);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Update success !");
		return "redirect:/admin/type";
	}
}
