package com.coeding.controller.admin;

import com.coeding.entity.CustomerOrder;
import com.coeding.entity.UserDetail;
import com.coeding.service.ContactService;
import com.coeding.service.OrderService;
import com.coeding.service.SubscriberService;
import com.coeding.service.UserService;

import java.util.ArrayList;
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
	OrderService orderService;
	@Autowired
	UserService userService;
	@Autowired
	SubscriberService subService;
	@Autowired
	ContactService contactService;

	@GetMapping
	public String customerHomePage(Authentication authentication, Model model) {
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		int size = orderService.numberNewOrder();
		model.addAttribute("numberNewOrder", size);
		model.addAttribute("numberUser", userService.findAll().size());
		model.addAttribute("numberSub", subService.findAll().size());
		model.addAttribute("numberContact", contactService.findAll().size());

		Date currentDate = new Date(System.currentTimeMillis());
		HashMap<Integer, Double> salesByYear = orderService.statistiqueSalesByYear(currentDate.getYear() - 1);
		List<Double> priceLastYear = new ArrayList<Double>();
		for (Integer month : salesByYear.keySet()) {
			priceLastYear.add(salesByYear.get(month));
		}
		model.addAttribute("priceLastYear", priceLastYear);
		
		List<Double> priceThisYear = new ArrayList<Double>();
		salesByYear = orderService.statistiqueSalesByYear(currentDate.getYear());
		double totalSales = 0.0;
		for (Integer month : salesByYear.keySet()) {
			if (month == (currentDate.getMonth()+1)) {
				double comparerByMonth = ((salesByYear.get(month) - salesByYear.get(month - 1))/salesByYear.get(month - 1)) * 100;
				model.addAttribute("comparerByMonth", Math.round(comparerByMonth));
			}
			totalSales += salesByYear.get(month);
			priceThisYear.add(salesByYear.get(month));
		}
		model.addAttribute("priceThisYear", priceThisYear);
		model.addAttribute("totalSales", totalSales);
		return "template/admin/index";
	}
}
