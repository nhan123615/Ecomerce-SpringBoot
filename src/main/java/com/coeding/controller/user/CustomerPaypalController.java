package com.coeding.controller.user;

import com.coeding.entity.UserDetail;
import com.coeding.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
/**
 * author Nhanle
 * */
@Controller
@RequestMapping("/customer/payment")
public class CustomerPaypalController {

	@Autowired
	PaypalService service;

	public static final String SUCCESS_URL = "customer/payment/paypal/success";
	public static final String CANCEL_URL = "customer/payment/paypal/cancel";

	@GetMapping("/paypal")
	public String home(Authentication authentication, Model model,HttpServletRequest request) {
		System.err.println(request.getContextPath());
		System.err.println("sevlet: "+request.getServletPath());
		System.err.println("URL:"+request.getRequestURL());
		System.err.println(request.getHeader("Host"));
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();

		model.addAttribute("user",	userDetails.getUser());
		return "template/user/customer/payment/paypal/payment-paypal";
	}


	@PostMapping("/paypal")
	public String payment(HttpServletRequest request) {
		try {
			Payment payment = service.createPayment(30.00, "USD", "paypal",
					"sale", "testing paypal", "http://"+request.getHeader("Host")+"/customer/payment/" + CANCEL_URL,
					"http://"+request.getHeader("Host")+"/customer/payment/" + SUCCESS_URL);


			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
			e.printStackTrace();
		}
		return "redirect:/customer";
	}
	
	 @GetMapping(value = CANCEL_URL)
	    public String cancelPay(Authentication authentication,Model model) {
		 UserDetail userDetails = (UserDetail) authentication.getPrincipal();

		 model.addAttribute("user",userDetails.getUser());
	        return "template/user/customer/payment/paypal/payment-failed";
	    }

	    @GetMapping(value = SUCCESS_URL)
	    public String successPay(Authentication authentication,Model model,@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
			UserDetail userDetails = (UserDetail) authentication.getPrincipal();

			model.addAttribute("user",userDetails.getUser());
	        try {
	            Payment payment = service.executePayment(paymentId, payerId);
//	            System.out.println(payment.toJSON());
	            if (payment.getState().equals("approved")) {
	            	String transactionId = payment.getId();
	            	String payerEmail = payment.getPayer().getPayerInfo().getEmail();
	            	String payerRecipientName = payment.getPayer().getPayerInfo().getShippingAddress().getRecipientName();
	            	String payerCity = payment.getPayer().getPayerInfo().getShippingAddress().getCity();
	            	String payerCountry = payment.getPayer().getPayerInfo().getShippingAddress().getCountryCode();
	            	String payerPostalCode = payment.getPayer().getPayerInfo().getShippingAddress().getPostalCode();
	            	String payerState = payment.getPayer().getPayerInfo().getShippingAddress().getState();


					System.out.println(transactionId);
					System.out.println(payerEmail);
					System.out.println(payerRecipientName);
					System.out.println(payerCity);
					System.out.println(payerCountry);
					System.out.println(payerPostalCode);
					System.out.println(payerState);


					return "template/user/customer/payment/paypal/payment-success";

	            }
	        } catch (PayPalRESTException e) {
	         System.out.println(e.getMessage());
	        }
	        return "redirect:/customer";
	    }

}
