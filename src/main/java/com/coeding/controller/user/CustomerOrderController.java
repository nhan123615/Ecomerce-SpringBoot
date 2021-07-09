package com.coeding.controller.user;

import com.coeding.entity.*;
import com.coeding.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * author Nhanle
 */
@Controller
@RequestMapping("/customer/order")
public class CustomerOrderController {

    private CustomerOrderService customerOrderService;
    private CustomerService customerService;
    private PaymentService paymentService;
    private PaypalDetailService paypalDetailService;

    @Autowired
    public CustomerOrderController(CustomerOrderService customerOrderService,CustomerService customerService,PaymentService paymentService,PaypalDetailService paypalDetailService) {
        this.customerOrderService = customerOrderService;
        this.customerService = customerService;
        this.paymentService = paymentService;
        this.paypalDetailService = paypalDetailService;
    }

    @GetMapping
    public String customerOrderPage(Authentication authentication, Model model) {
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        model.addAttribute("user", userDetails.getUser());

        Customer customer = customerService.findByUserId(userDetails.getUser().getId());

        model.addAttribute("customerOrders", customerOrderService.findAllOrderByCustomerId(customer.getId()));
        return "template/user/customer/invoice/invoice-page";

    }

    @GetMapping("/detail")
    public String customerOrderDetail(Authentication authentication,Model model,@RequestParam("id")Long id){
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        model.addAttribute("user", userDetails.getUser());

        CustomerOrder order = customerOrderService.findById(id);
        Long countPayment = paymentService.countByCustomerOrderId(order.getId());
        if (countPayment >0){
            Payment payment = paymentService.findPaymentByCustomerOrderId(order.getId());
            Long countPaypalDetail = paypalDetailService.countByPaymentId(payment.getId());
            if (countPaypalDetail >0){
                PaypalDetail paypalDetail =  paypalDetailService.findByPaymentId(payment.getId());
                model.addAttribute("paypalDetail",paypalDetail);
            }
            model.addAttribute("payment",payment);
        }

        model.addAttribute("order",order) ;
        return "template/user/customer/invoice/invoice-detail";
    }

}
