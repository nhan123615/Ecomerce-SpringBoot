package com.coeding.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String ListOrderController(Model model) {
		model.addAttribute("orderList",order.findAll());
		return "template/admin/order/list";
	}
	@GetMapping(value ="/order/detail")
	public String DetailOrderController(Model model , @RequestParam("id") Long id) {
		model.addAttribute("orderDetail", order.findById(id));
		return "template/admin/order/detail";
	}
}
