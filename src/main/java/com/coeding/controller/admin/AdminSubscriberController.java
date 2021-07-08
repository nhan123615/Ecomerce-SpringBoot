package com.coeding.controller.admin;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coeding.entity.EmailSubscriber;
import com.coeding.entity.UserDetail;
import com.coeding.service.SubscriberService;
/**
 * 
 * @author Vy
 * list , detail
 */
@Controller
@RequestMapping("/admin")
public class AdminSubscriberController {
	private SubscriberService subscriber;
	
	public AdminSubscriberController(SubscriberService sub) {
		this.subscriber = sub;
	}
	@GetMapping("subscriber")
	public String ListSubscriberController(Authentication authentication, Model model) {
		model.addAttribute("sub",subscriber.findAll());
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/admin/subscriber/list";
	}
}
