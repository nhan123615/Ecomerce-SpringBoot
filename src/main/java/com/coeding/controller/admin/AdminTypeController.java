package com.coeding.controller.admin;

import java.io.IOException;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.coeding.entity.Type;
import com.coeding.service.CategoryService;
import com.coeding.service.TypeService;

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
	public String show(Model model) {
		model.addAttribute("list", typeService.findAll());
		return "template/admin/type/list-type";
	}
	
	@GetMapping(value = "/type/new")
	public String newType(Locale locale, Model model) {
		logger.info("get : newType");

		model.addAttribute("categories", categoryService.findAll());
		return "template/admin/type/form-add-type";
	}

	@PostMapping(value = "/type/new")
	public String saveType(Type type, Locale locale, Model model) {
		logger.info("post : saveType");
		return "redirect:/admin/type";
	}

	@GetMapping(value = "/type/edit")
	public String edit(@RequestParam(value = "id") Long id, Locale locale, Model model) {
		Type t = typeService.findById(id);
		model.addAttribute("type", t);
		model.addAttribute("categories", categoryService.findAll());
		return "template/admin/type/form-edit-type";
	}

	@PostMapping(value = "/type/update")
	public String update(Type type, Locale locale, Model model) throws IOException {

		return "redirect:/admin/type";
	}
}
