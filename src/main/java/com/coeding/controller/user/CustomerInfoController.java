package com.coeding.controller.user;

import com.coeding.entity.Customer;
import com.coeding.entity.UserDetail;
import com.coeding.service.CustomerService;
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
 */
@Controller
@RequestMapping("/customer/info")
public class CustomerInfoController {

    private CustomerService customerService;

    @Autowired
    public CustomerInfoController(CustomerService customer) {
        this.customerService = customer;
    }

    @GetMapping
    public String customerInfoPage(Authentication authentication, Model model) {
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        model.addAttribute("user", userDetails.getUser());

        Long countCustomer = customerService.countByUserId(userDetails.getUser().getId());

        if (countCustomer>0){
            Customer customer = customerService.findByUserId(userDetails.getUser().getId());
            model.addAttribute("customerInfo",customer);
            return "template/user/customer/info/info-page";
        }else{
            model.addAttribute("customerInfo",new Customer());
            return "template/user/customer/info/info-new";
        }

    }

    @GetMapping("/update")
    public String processCustomerInfo(Model model,@RequestParam("id")Long id){
        model.addAttribute("customerInfo",customerService.findById(id));
        return "template/user/customer/info/info-update";
    }


    @PostMapping("/update")
    public String updateCustomerInfo(Customer customer, HttpServletRequest request){
        customerService.save(customer);
        String message = (String) request.getSession().getAttribute("message");
        request.getSession().setAttribute("message", "Update success !");
        return "redirect:/customer/info";
    }


    @PostMapping("/new")
    public String createCustomerInfo(Authentication authentication,Customer customer,HttpServletRequest request){
        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
        Long countCustomer = customerService.countByUserId(userDetails.getUser().getId());
        if (countCustomer == 0){
            customer.setUser(userDetails.getUser());
            customerService.save(customer);
            String message = (String) request.getSession().getAttribute("message");
            request.getSession().setAttribute("message", "Submit success !");
        }
        return "redirect:/customer/info";
    }

}
