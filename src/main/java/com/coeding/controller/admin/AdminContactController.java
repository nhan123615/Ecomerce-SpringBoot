package com.coeding.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coeding.entity.Contact;
import com.coeding.service.ContactService;

/**
 * @author Ton That Cao Cuong
 * 
 * */
@Controller
@RequestMapping("/admin")
public class AdminContactController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminProductController.class);

	@Autowired
	ContactService contactService;
	
	@GetMapping("/contact")
	public String show(Authentication authentication, Model model) {
		
		
		model.addAttribute("contactList", contactService.findAll());
		
		return "template/admin/contact/list-contact";
		}
	
	@GetMapping("/contact/edit")
	public String EditUserController(
			@RequestParam(value = "id") Long id,Model model, Authentication authentication){
		model.addAttribute("contactDetail" , contactService.findById(id));
		return "template/admin/contact/edit-contact";
	}
	
	
	@GetMapping("/contact/detail")
	public String DetailUserController(@RequestParam(value = "id") Long id, Model model,
			Authentication authentication) {
		Contact contact = contactService.findById(id);
		model.addAttribute("contactDetail", contact);
	
		return "template/admin/contact/detail-contact";
	}
	
	


	@PostMapping(value = "/contact/update")
	public String update(Model model, Contact cont, HttpServletResponse response,
			 HttpServletRequest request) {
		
		Contact contact = contactService.findById(cont.getId());
		contact.setEmail(cont.getEmail());
		contact.setMessage(cont.getMessage());
		contact.setName(cont.getName());
		contact.setSubject(cont.getSubject());
		contact.setReply(cont.getReply());
		
		contactService.save(contact);
		String message = (String) request.getSession().getAttribute("message");
		request.getSession().setAttribute("message", "Update success !");
		return "redirect:/admin/contact";
		
	}

}
