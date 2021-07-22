package com.coeding.controller.admin;

import com.coeding.helper.EmailHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coeding.entity.EmailSubscriber;
import com.coeding.entity.UserDetail;
import com.coeding.service.SubscriberService;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @author Vy
 * list , detail
 *
 *  @author Nhanle
 *  subcriber/rely
 */
@Controller
@RequestMapping("/admin")
public class AdminSubscriberController {
	private SubscriberService subscriber;
	private EmailHelper emailHelper;

	@Autowired
	public AdminSubscriberController(SubscriberService sub,EmailHelper emailHelper) {
		this.subscriber = sub;
		this.emailHelper = emailHelper;
	}

	@GetMapping("subscriber")
	public String ListSubscriberController(Authentication authentication, Model model) {
		model.addAttribute("sub",subscriber.findAll());
		return "template/admin/subscriber/list";
	}

	@GetMapping("subscriber/rely")
	public String sendEmail(@RequestParam("id") List<Long> listId , Model model){
		List<EmailSubscriber> subscribers = new ArrayList<>();
		listId.forEach(id->subscribers.add(subscriber.findById(id)));
		model.addAttribute("subcribers",subscribers);
		return "template/admin/subscriber/email-rely";
	}

	@PostMapping("subscriber/rely")
	public String processSendEmail(@RequestParam("email") List<Long>listId,
								   @RequestParam("description") String content,
								   @RequestParam("subject") String subject,
								   HttpServletRequest request){
		listId.forEach(id->{
			EmailSubscriber emailSubscriber = subscriber.findById(id);
			String mainContent = "<h1>Dear Mr/Ms "+emailSubscriber.getFirstName()+" "+emailSubscriber.getLastName()+"</h1>"+content;
			emailHelper.send(emailSubscriber.getEmail(),subject,mainContent);
		});
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Send message success!");

		return "redirect:/admin/subscriber";
	}


}
