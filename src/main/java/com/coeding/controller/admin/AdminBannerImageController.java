package com.coeding.controller.admin;

import java.io.IOException;
import java.util.List;
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

import javax.servlet.http.HttpServletRequest;

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
	private BannerGalleryService bannerService;

	@GetMapping(value = "/banner")
	public String listBanner(Authentication authentication, Locale locale, Model model) {
		log.info("list banner");
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		List<BannerGallery> listBanner = bannerService.findAll();
		model.addAttribute("listBanner", listBanner);
		return "template/admin/banner/list-banner-image";
	}

	@GetMapping(value = "/banner/new")
	public String newBanner(Authentication authentication, Locale locale, Model model) {
		log.info("new banner");
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		return "template/admin/banner/form-add-banner-image";
	}

	@PostMapping(value = "/banner/new")
	public String saveBanner(@RequestParam("image") MultipartFile[] uploadfile, Locale locale, Model model, HttpServletRequest request)
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
				String message = (String) request.getSession().getAttribute("message");
				request.getSession().setAttribute("message", "Submit success !");
			}
		}
		return "redirect:/admin/banner";
	}

	@GetMapping(value = "/banner/edit")
	public String editBanner(@RequestParam(value = "id") Long id, Authentication authentication, Locale locale,
			Model model) {
		log.info("edit banner");
//		UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//		model.addAttribute("user", userDetails.getUser());
		BannerGallery bannerGallery = bannerService.findById(id);
		model.addAttribute("bannerGallery", bannerGallery);
		return "template/admin/banner/form-edit-banner-image";
	}


	@PostMapping(value = "/banner/edit")
	public String updateBanner(@RequestParam("img") MultipartFile uploadfile, BannerGallery bannerGallery,
			Locale locale, Model model,HttpServletRequest request) throws IOException {
		log.info("update banner");
		BannerGallery b = bannerService.findById(bannerGallery.getId());
		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			String name = uploadfile.getName();
			String type = uploadfile.getContentType();
			log.info(fileName + "," + name + "," + type);
			b.setImage(uploadfile.getBytes());
			bannerService.save(b);
			String message = (String) request.getSession().getAttribute("message");
			request.getSession().setAttribute("message", "Update success !");
		}
		return "redirect:/admin/banner";
	}

	@PostMapping("/banner/delete")
	public String deleteBanner (@RequestParam(value = "id") Long id){
		bannerService.delete(id);
		return "redirect:/admin/banner";
	}
}
