package com.coeding.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.entity.PaypalDetail;
import com.coeding.service.CategoryService;
import com.coeding.service.PaymentDetailService;
import com.coeding.service.PaymentService;
import com.coeding.service.PaypalDetailService;
import com.paypal.api.payments.PaymentDetail;

/**
 * 
 * @author Vy list , detail
 */
@Controller

@RequestMapping("/admin")
public class AdminPaymentController {
	@Autowired
	PaypalDetailService paymentDetail;
	
	@Autowired
	private PaymentService payment;

	@GetMapping("/payment")
	public String ListPaymentController(Model model) {
		model.addAttribute("paymentList", payment.findAll());
		return "template/admin/payment/list";
	}

	@RequestMapping(value = "/payment/detail", method = RequestMethod.GET)
	public String DetailPaymentController(@RequestParam("id") Long id, PaymentDetail pmt ,Model model) {
		
		model.addAttribute("id" , id);
		model.addAttribute("paymentDetail" , paymentDetail.findAll());
		
		return "template/admin/payment/detail";
	}
}
