package com.coeding.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.entity.ImageGallery;
import com.coeding.entity.SanPham;
import com.coeding.service.ImageService;
import com.coeding.service.SanPhamService;
@Controller
@RequestMapping("/admin")
public class AdminSanPhamController {
	private static final Logger logger = LoggerFactory.getLogger(AdminSanPhamController.class);
	@Autowired
	SanPhamService service;
	@Autowired
	ImageService imgService;
	
	@GetMapping(value = "/product/new")
	public String fileform(Locale locale, Model model) {
		logger.info("get : fileform");
		return "template/admin/form-add-product";
	}

	@PostMapping(value = "/product/new")
	public String savefile(@RequestParam("img") MultipartFile[] uploadfile, SanPham sp, Locale locale, Model model)
			throws IOException {
		logger.info("post : savefile");
		logger.info("length : "+uploadfile.length);
		if (uploadfile.length ==4) {
			List<ImageGallery> list = new ArrayList<ImageGallery>();
			for (MultipartFile m : uploadfile) {
				if (!m.isEmpty()) {
					String fileName = m.getOriginalFilename();
					String name = m.getName();
					String type = m.getContentType();
					logger.info(fileName + "," + name + "," + type);
					ImageGallery img = new ImageGallery();
					img.setImage(m.getBytes());
					imgService.save(img);
					list.add(img);
				}
			}
			sp.setImages(list);
			service.save(sp);
			return "redirect:/admin/product";
		}else {
			return "redirect:/admin/product/new";
		}

		
	}

	@GetMapping("/product/display/{n}&{id}")
	@ResponseBody
	void showImage(@PathVariable("n") Integer n, @PathVariable("id") Long id, HttpServletResponse response) throws ServletException, IOException {
		logger.info("Id :: " + id);
		SanPham sp = service.getSanPhamById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (sp.getImages().size() > n) {
			response.getOutputStream().write(sp.getImages().get(n).getImage());
		}
		response.getOutputStream().close();
	}
	
	@GetMapping("/product")
	String show(Model map) {
		List<SanPham> list = service.findAll();
		logger.info("list: " + list.size());
		map.addAttribute("list", list);
		return "template/admin/list-product";
	}

	@GetMapping(value = "/product/edit")
	public String edit(@RequestParam(value = "id") Long id, Locale locale, Model model) {
		logger.info("product edit {}.", locale);
		SanPham sp = service.getSanPhamById(id);
		model.addAttribute("sanpham", sp);
		return "template/admin/form-edit-product";
	}

	@PostMapping(value = "/product/update")
	public String update(@RequestParam("img") MultipartFile[] uploadfile, SanPham sp, Locale locale, Model model)
			throws IOException {
		logger.info("product update {}.", locale);
		List<ImageGallery> list = new ArrayList<ImageGallery>();
		SanPham sanPham = service.getSanPhamById(sp.getId());
		sanPham.setName(sp.getName());
		sanPham.setDescription(sp.getDescription());
		list = sanPham.getImages();
		int count = 0;
		for (MultipartFile m : uploadfile) {
			if (!m.isEmpty()) {
				String fileName = m.getOriginalFilename();
				String name = m.getName();
				String type = m.getContentType();
				logger.info(fileName + "," + name + "," + type);
				if (count > list.size() || count == list.size()) {
					ImageGallery img = new ImageGallery();
					img.setImage(m.getBytes());
					imgService.save(img);
					list.add(img);
				} else {
					ImageGallery image = list.get(count);
					image.setImage(m.getBytes());
					imgService.save(image);
				}
			}
			count++;
		}
		sanPham.setImages(list);
		service.save(sanPham);
		return "redirect:/admin/product";
	}
	@GetMapping(value = "/product/detail")
	public String view(@RequestParam(value = "id") Long id, Locale locale, Model model) {
		logger.info("product detail {}.", locale);
		SanPham sp = service.getSanPhamById(id);
		model.addAttribute("sanpham", sp);
		return "template/admin/detail-product";
	}
}
