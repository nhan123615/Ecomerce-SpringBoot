package com.coeding.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.coeding.entity.Brand;
import com.coeding.entity.Category;
import com.coeding.entity.ImageGallery;
import com.coeding.entity.Product;
import com.coeding.service.BrandService;
import com.coeding.service.CategoryService;
import com.coeding.service.ImageService;
import com.coeding.service.ProductService;
import com.coeding.service.TypeService;

@Controller
@RequestMapping("/admin1")
public class AdminProductController {
	private static final Logger logger = LoggerFactory.getLogger(AdminProductController.class);

	@Autowired
	ProductService productService;
	@Autowired
	ImageService imgService;
	@Autowired
	BrandService brandService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	TypeService typeService;
	
	@GetMapping(value = "/product/new")
	public String fileform(Locale locale, Model model) {
		logger.info("get : fileform");
		model.addAttribute("brands", brandService.findAll());
		model.addAttribute("categories", categoryService.findAll());
		return "template/admin/form-add-product1";
	}

	@PostMapping(value = "/product/new")
	public String savefile(@RequestParam("img") MultipartFile[] uploadfile, Product sp, Locale locale, Model model)
			throws IOException {
		logger.info("post : savefile");
		logger.info("length : " + uploadfile.length);
		String color = sp.getProductColor().substring(0, sp.getProductColor().length());
		sp.setProductColor(color);
		if (uploadfile.length == 4) {
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
			productService.save(sp);
			return "redirect:/admin/product";
		} else {
			return "redirect:/admin/product/new";
		}
	}

	@GetMapping("/product/display/{n}&{id}")
	@ResponseBody
	public void showImage(@PathVariable("n") Integer n, @PathVariable("id") Long id, HttpServletResponse response)
			throws ServletException, IOException {
		logger.info("Id :: " + id);
		Product product = productService.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (product.getImages().size() > n) {
			response.getOutputStream().write(product.getImages().get(n).getImage());
		}
		response.getOutputStream().close();
	}

	@GetMapping("/product")
	public String show(Model model) {
		List<Product> list = productService.findAll();
		logger.info("list: " + list.size());
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("list", list);
		return "template/admin/list-product1";
	}

	@GetMapping(value = "/product/edit")
	public String edit(@RequestParam(value = "id") Long id, Locale locale, Model model) {
		logger.info("product edit {}.", locale);
		Product product = productService.findById(id);
		model.addAttribute("product", product);
		List<String> listColor = Arrays.asList(product.getProductColor().split(","));
		for(String color : listColor) {
			model.addAttribute(color, color);
		}
		model.addAttribute("brands", brandService.findAll());
		model.addAttribute("categories", categoryService.findAll());
		model.addAttribute("types", typeService.findAll());
		return "template/admin/form-edit-product1";
	}

	@PostMapping(value = "/product/update")
	public String update(@RequestParam("img") MultipartFile[] uploadfile, Product p, Locale locale, Model model)
			throws IOException {
		logger.info("product update {}.", locale);
		List<ImageGallery> list = new ArrayList<ImageGallery>();
		Product product = productService.findById(p.getId());
		product.setProductName(p.getProductName());
		product.setBrand(p.getBrand());
		product.setCategory(p.getCategory());
		product.setEnabled(p.isEnabled());
		product.setType(p.getType());
		product.setPrice(p.getPrice());
		product.setStockQuantity(p.getStockQuantity());
		product.setDescription(p.getDescription());
		product.setProductColor(p.getProductColor());
		list = product.getImages();
		int count = 0;
		for (MultipartFile m : uploadfile) {
			if (!m.isEmpty()) {
				String fileName = m.getOriginalFilename();
				String name = m.getName();
				String type = m.getContentType();
				logger.info(fileName + "," + name + "," + type);
				ImageGallery image = list.get(count);
				image.setImage(m.getBytes());
				imgService.save(image);
			}
			count++;
		}
		product.setImages(list);
		productService.save(product);
		return "redirect:/admin1/product";
	}

	@GetMapping(value = "/product/detail")
	public String view(@RequestParam(value = "id") Long id, Locale locale, Model model) {
		logger.info("product detail {}.", locale);
		Product sp = productService.findById(id);
		model.addAttribute("product", sp);
		return "template/admin/detail-product";
	}
}
