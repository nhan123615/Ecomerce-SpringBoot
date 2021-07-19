package com.coeding.controller.user;

import com.coeding.entity.*;
import com.coeding.helper.UserHelper;
import com.coeding.service.*;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * author Nhanle
 */
@Controller
@RequestMapping("/customer/payment")
public class CustomerPaypalController {

    private PaypalService service;
    private CustomerOrderService customerOrderService;
    private CustomerService customerService;
    private CustomerOrder order;
    private PaypalDetailService paypalDetailService;
    private PaymentService paymentService;
    private UserService userService;
    private UserHelper userHelper;

    @Autowired
    public CustomerPaypalController(PaypalService service, CustomerOrderService customerOrderService, CustomerService customerService, PaypalDetailService paypalDetailService, PaymentService paymentService,UserService userService,UserHelper userHelper) {
        this.service = service;
        this.customerOrderService = customerOrderService;
        this.customerService = customerService;
        this.paypalDetailService = paypalDetailService;
        this.paymentService = paymentService;
        this.userService = userService;
        this.userHelper = userHelper;
    }

    public static final String SUCCESS_URL = "customer/payment/paypal/success";
    public static final String CANCEL_URL = "customer/payment/paypal/cancel";

//	@GetMapping("/paypal")
//	public String home(Authentication authentication, Model model,HttpServletRequest request) {
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//
//		model.addAttribute("customerOrder",customerOrderService.findById(11L));
//		model.addAttribute("user",	userDetails.getUser());
//		return "template/user/customer/payment/paypal/payment-paypal";
//	}


    @PostMapping("/paypal")
    public String payment(
            HttpServletRequest request,
            Authentication authentication
    ) {
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        User user = userHelper.getUser(authentication,userService);
//        if (authentication.getPrincipal() instanceof  UserDetail){
//            UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//            user = userDetails.getUser();
//        }
//
//        if (authentication.getPrincipal() instanceof OAuth2User) {
//            OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
//            user = userService.findByEmail(String.valueOf(oAuth2User.getAttributes().get("email")));
//        }
        Long countCustomer = customerService.countByUserId(user.getId());
        if (countCustomer > 0) {
            Customer customer = customerService.findByUserId(user.getId());
            order = customerOrderService.findOrderByCustomerId(customer.getId());

            try {
                double totalOrder = order.getTotalPrice();
                String currency = "USD";
                String paymentMethod = "paypal";
                String intent = "sale";
                String description = "testing paypal";


                Payment payment = service.createPayment(totalOrder, currency, paymentMethod,
                        intent, description, "http://" + request.getHeader("Host") + request.getContextPath() + "/customer/payment/" + CANCEL_URL,
                        "http://" + request.getHeader("Host") + request.getContextPath() + "/customer/payment/" + SUCCESS_URL);

                for (Links link : payment.getLinks()) {
                    if (link.getRel().equals("approval_url")) {
                        return "redirect:" + link.getHref();
                    }
                }

            } catch (PayPalRESTException e) {
                e.printStackTrace();
            }
        }

        return "redirect:/customer";
    }

    @GetMapping(value = CANCEL_URL)
    public String cancelPay(Authentication authentication, Model model) {
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user", userDetails.getUser());
//        return "template/user/customer/payment/paypal/payment-failed";
        return "redirect:/customer/payment/paypal/payment-failed";

    }

    @GetMapping(value = SUCCESS_URL)
    public String successPay(Authentication authentication, Model model, @RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user", userDetails.getUser());
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


                paymentService.save(new com.coeding.entity.Payment(
                        order.getTotalPrice(),
                        "paypal",
                        true,
                        order
                ));

                com.coeding.entity.Payment orderPayment = paymentService.findPaymentByCustomerOrderId(order.getId());
                paypalDetailService.save(new PaypalDetail(
                        transactionId,
                        payerEmail,
                        payerRecipientName,
                        payerCity,
                        payerCountry,
                        payerPostalCode,
                        payerState,
                        orderPayment
                ));

                order.setStatus(true);
                customerOrderService.save(order);
//                return "template/user/customer/payment/paypal/payment-success";
                return "redirect:/customer/payment/paypal/payment-success";
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }
        return "redirect:/customer";
    }

    @GetMapping("/paypal/payment-success")
    public String paymentSuccessPage(Authentication authentication, Model model) {
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user", userDetails.getUser());
        return "template/user/customer/payment/paypal/payment-success";
    }

    @GetMapping("/paypal/payment-failed")
    public String paymentFailedPage(Authentication authentication, Model model) {
        return "template/user/customer/payment/paypal/payment-failed";
    }


}
