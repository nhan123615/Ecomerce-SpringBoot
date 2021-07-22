package com.coeding.controller.admin;

import com.coeding.entity.CustomerOrder;
import com.coeding.entity.Product;
import com.coeding.entity.UserDetail;
import com.coeding.service.ContactService;
import com.coeding.service.OrderService;
import com.coeding.service.PaymentService;
import com.coeding.service.ProductService;
import com.coeding.service.SubscriberService;
import com.coeding.service.UserService;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Lam Cong Hau
 */
@Controller
@RequestMapping("/admin")
public class AdminHomeController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private SubscriberService subService;
	@Autowired
	private ContactService contactService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private ProductService productService;
	@GetMapping
	public String customerHomePage(Authentication authentication, Model model) {
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		int size = orderService.numberNewOrder();
		model.addAttribute("numberNewOrder", size);
		model.addAttribute("numberUser", userService.findAll().size());
		model.addAttribute("numberSub", subService.findAll().size());
		model.addAttribute("numberContact", contactService.findAll().size());

		Calendar c = Calendar.getInstance();
		int month = c.get(Calendar.MONTH) + 1;
		int year = c.get(Calendar.YEAR);

		HashMap<Integer, Double> salesByYear = paymentService.statistiqueSalesByYear(year - 1);
		List<Double> priceLastYear = paymentService.getListPricePayment(salesByYear);
		model.addAttribute("priceLastYear", priceLastYear);

		salesByYear = paymentService.statistiqueSalesByYear(year);
		List<Double> priceThisYear = paymentService.getListPricePayment(salesByYear);
		model.addAttribute("priceThisYear", priceThisYear);
		double totalSales = paymentService.totalSales(salesByYear);
		model.addAttribute("totalSales", totalSales);
		for (Integer m : salesByYear.keySet()) {
			if (m == month) {
				if (salesByYear.get(m - 1) > 0) {
					double comparerByMonth = ((salesByYear.get(m) - salesByYear.get(m - 1)) / salesByYear.get(m - 1))
							* 100;
					model.addAttribute("comparerByMonth", Math.round(comparerByMonth));
				}else {
					model.addAttribute("comparerByMonth", 0);
				}
			}
		}
		List<Product> list = new ArrayList<>();
		productService.findTop5().forEach(pid->list.add(productService.findById(pid)));
		model.addAttribute("topProducts", list);
		return "template/admin/index";
	}
}
