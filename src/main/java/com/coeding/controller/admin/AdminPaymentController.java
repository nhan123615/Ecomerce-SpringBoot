package com.coeding.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.service.PaymentService;

/**
 * 
 * @author Vy
 * list , detail
 */
@Controller
@RequestMapping("/admin")
public class AdminPaymentController {
	@Autowired
	private PaymentService payment;
	
	@GetMapping("/payment")
	public String ListPaymentController(Model model) {
		model.addAttribute("paymentList",payment.findAll());
		return "template/admin/payment/list";
	}
	@RequestMapping(value="/payment/detail" , method = RequestMethod.GET)
	public String DetailPaymentController(@RequestParam("id") Long id , Model model) {
		model.addAttribute("detailPayment" , payment.findById(id));
		return "template/admin/payment/detail";
	}
}
