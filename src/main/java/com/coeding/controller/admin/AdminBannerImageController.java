package com.coeding.controller.admin;

import java.io.IOException;
import java.util.Locale;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.entity.BannerGallery;
import com.coeding.entity.UserDetail;
import com.coeding.service.BannerGalleryService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author Lam Cong Hau
 *
 */
@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminBannerImageController {
	@Autowired
	BannerGalleryService bannerService;
	
	@GetMapping(value = "/banner")
	public String listBanner(Authentication authentication, Locale locale, Model model) {
		log.info("list banner");
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/admin/banner/list-banner-image";
	}
	
	@GetMapping(value = "/banner/new")
	public String newBanner(Authentication authentication, Locale locale, Model model) {
		log.info("new banner");
		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
		model.addAttribute("user", userDetails.getUser());
		return "template/admin/banner/form-add-banner-image";
	}

	@PostMapping(value = "/banner/new")
	public String saveBanner(@RequestParam("image") MultipartFile[] uploadfile, Locale locale, Model model)
			throws IOException {
		log.info("new banner");
		log.info("file size: " + uploadfile.length);
		for (MultipartFile m : uploadfile) {
			if (!m.isEmpty()) {
				String fileName = m.getOriginalFilename();
				String name = m.getName();
				String type = m.getContentType();
				log.info(fileName + "," + name + "," + type);
				BannerGallery bannerGallery = new BannerGallery();
				bannerGallery.setImage(m.getBytes());
				bannerService.save(bannerGallery);
			}
		}
		return "redirect:/admin/banner";
	}
}
