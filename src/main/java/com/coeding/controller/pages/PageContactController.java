package com.coeding.controller.pages;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.coeding.entity.Contact;
import com.coeding.service.ContactService;

/**
 * @author TranDung
 *
 */
@Controller
public class PageContactController {
	private ContactService contactService;
	
	public PageContactController(ContactService contact) {
		this.contactService = contact;
	}
	
    @GetMapping("contact")
    public String contactHomePage(Model model) {
        return "template/user/page/contact/form";
    }
    
    @PostMapping(value = "/contact/submit")
	public String save(Contact ctx,Model model) {
		contactService.save(ctx);
		return "redirect:/";
	}
}