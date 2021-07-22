package com.coeding.controller.pages;

import com.coeding.entity.EmailSubscriber;
import com.coeding.entity.Product;
import com.coeding.service.ProductService;
import com.coeding.service.SubscriberService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/**
 * @author nhanle
 *
 */
@Slf4j
@Controller
@RequestMapping("/subcriber")
public class PageSubcriberController {
	private SubscriberService subscriberService;
	@Autowired
	public PageSubcriberController(SubscriberService subscriberService) {
		this.subscriberService = subscriberService;
	}

	@PostMapping()
	public String subcribe(EmailSubscriber subscriber,HttpServletRequest request) {
		String message = (String) request.getSession().getAttribute("message");
		Long count = subscriberService.countByEmail(subscriber.getEmail());
		if (count >0){
			request.getSession().setAttribute("message", "Invalid, Subcriber already registed !");

		}else{
			subscriberService.save(subscriber);
			request.getSession().setAttribute("message", "Thank you to subcribe us !");
		}

		return "redirect:/";
	}
}
