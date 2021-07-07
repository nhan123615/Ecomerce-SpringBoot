package com.coeding.controller.user;

import com.coeding.entity.Customer;
import com.coeding.entity.CustomerOrder;
import com.coeding.entity.PaypalDetail;
import com.coeding.entity.UserDetail;
import com.coeding.service.*;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/customer/payment")
public class CustomerCashController {

	private CustomerOrderService customerOrderService;
	private CustomerService customerService;
	private CustomerOrder order;
	private PaymentService paymentService;

	@Autowired
	public CustomerCashController(CustomerOrderService customerOrderService, CustomerService customerService,  PaymentService paymentService) {
		this.customerOrderService = customerOrderService;
		this.customerService = customerService;
		this.paymentService = paymentService;
	}



	@PostMapping("/cash")
	public String payment(Authentication authentication) {
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		Long countCustomer = customerService.countByUserId(userDetails.getUser().getId());
		if (countCustomer >0) {
			Customer customer = customerService.findByUserId(userDetails.getUser().getId());
			order = customerOrderService.findOrderByCustomerId(customer.getId());
			paymentService.save(new com.coeding.entity.Payment(
					order.getTotalPrice(),
					"cash",
					true,
					order
			));
			order.setStatus(true);
			customerOrderService.save(order);
			return "redirect:/customer/payment/cash/payment-success";
		}
		return "redirect:/customer";
	}

	@GetMapping("/cash/payment-success")
	public String paymentSuccessPage(Authentication authentication, Model model) {
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/user/customer/payment/cash/payment-success";
	}
}
