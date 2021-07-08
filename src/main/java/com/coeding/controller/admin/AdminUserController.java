package com.coeding.controller.admin;

import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.service.UserService;

import antlr.StringUtils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

/**
 * 
 * @author Vy
 * list , edit , update , detail
 */
@Controller
@RequestMapping("/admin")
public class AdminUserController {
	private UserService userService;
	
	public AdminUserController(UserService user) {
		this.userService = user;
	}
	@GetMapping("/user")
	public String ListUserController(Authentication authentication, Model model) {
		model.addAttribute("userList" , userService.findAll());
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return  "template/admin/user/list";
	}
	@GetMapping("/user/edit")
	public String EditUserController(
			@RequestParam(value = "id") Long id,Model model, Authentication authentication){
		model.addAttribute("userDetail" , userService.findById(id));
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/admin/user/edit";
	}
	@GetMapping("/user/detail")
	public String DetailUserController(
			@RequestParam(value = "id") Long id,Model model, Authentication authentication){
		model.addAttribute("userDetail" , userService.findById(id));
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/admin/user/detail";
	}
	@RequestMapping(value = "/user/saveUpdate", method = RequestMethod.POST)
	public String SaveUserController(Model model, User user,HttpServletResponse response, Authentication authentication) {	     
		User userIn = userService.findById(user.getId());
		userIn.setEnabled(user.isEnabled());
		userIn.setRole(user.getRole());
		userService.saveUser(userIn);
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "redirect:/admin/user";
	}
}