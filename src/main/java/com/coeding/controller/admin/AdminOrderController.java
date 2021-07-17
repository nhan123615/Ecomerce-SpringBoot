package com.coeding.controller.admin;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.entity.UserDetail;
import com.coeding.service.OrderService;
/**
 * 
 * @author Vy
 * list , detail
 */
@Controller
@RequestMapping("admin")
public class AdminOrderController {
	private OrderService order;
	
	
	public AdminOrderController(OrderService or) {
		this.order = or;
	}
	@GetMapping("/order")
	public String ListOrderController(Authentication authentication, Model model) {
		model.addAttribute("orderList",order.findAll());
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/order/list";
	}
	@GetMapping(value ="/order/detail")
	public String DetailOrderController(Authentication authentication, Model model , @RequestParam("id") Long id) {
		model.addAttribute("orderDetail", order.findById(id));
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/order/detail";
	}
}
