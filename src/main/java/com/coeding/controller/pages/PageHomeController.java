package com.coeding.controller.pages;

import com.coeding.entity.BannerGallery;
import com.coeding.entity.Product;
import com.coeding.entity.User;
import com.coeding.entity.UserDetail;
import com.coeding.helper.CookieHelper;
import com.coeding.service.BannerGalleryService;
import com.coeding.service.CategoryService;
import com.coeding.service.ProductService;
import com.coeding.service.RatingService;
import com.mservice.allinone.models.CaptureMoMoRequest;
import com.mservice.allinone.models.CaptureMoMoResponse;
import com.mservice.allinone.processor.allinone.CaptureMoMo;
import com.mservice.shared.sharedmodels.Environment;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Nhanle
 * @author Lam Cong Hau
 * Review rating star
 */
@Slf4j
@Controller
//@RequestMapping("/")
public class PageHomeController {
	private BannerGalleryService bannerGalleryService;
	private CategoryService categoryService;
	private ProductService productService;
	private CookieHelper cookieHelper;
	private RatingService ratingService; 
	@Autowired
	public PageHomeController(CategoryService categoryService, ProductService productService,
			BannerGalleryService bannerGalleryService, CookieHelper cookieHelper, RatingService ratingService) {
		this.categoryService = categoryService;
		this.productService = productService;
		this.cookieHelper = cookieHelper;
		this.bannerGalleryService = bannerGalleryService;
		this.ratingService = ratingService;
	}

	@GetMapping(value = "/")
	public String customerHomePage(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication, Model model) {

		Map<String, List<Product>> productByCategory = new HashMap<>();
		List<Product> listProduct = productService.findAllIgnoreStatus();
		
		//review{
		Map<String, Map<Long, Integer>> mapReviewByCategory = new HashMap<String, Map<Long, Integer>>();
		Map<String, Map<Long, Double>> mapAvgStarByCategory = new HashMap<String, Map<Long, Double>>();
		categoryService.findAll().forEach(c -> {
			productByCategory.put(c.getName(), productByCategory(listProduct, c.getName()));
			//review
			Map<Long, Integer> mapReviewByCategoryProduct = ratingService.findAllReviewByList(productByCategory(listProduct, c.getName()));
			mapReviewByCategory.put(c.getName(), mapReviewByCategoryProduct);
			
			Map<Long, Double> mapAvgStarByCategoryProduct = ratingService.findAllAvgStarByList(productByCategory(listProduct, c.getName()));
			mapAvgStarByCategory.put(c.getName(), mapAvgStarByCategoryProduct);
		});
		model.addAttribute("mapReviewByCategory", mapReviewByCategory);
		model.addAttribute("mapAvgStarByCategory", mapAvgStarByCategory);
		//}
		
		model.addAttribute("productByCategory", productByCategory);
		model.addAttribute("viewlist", cookieHelper.getCookieByName(request, productService, "viewlist"));
		List<BannerGallery> bannerList = bannerGalleryService.findAll();
		model.addAttribute("listBanner", bannerList);

		//review {
		Map<Long, Integer> mapReviewByView = ratingService.findAllReviewByList(cookieHelper.getCookieByName(request, productService, "viewlist"));
		model.addAttribute("mapReviewByView", mapReviewByView);
		Map<Long, Double> mapAvgStarByView = ratingService.findAllAvgStarByList(cookieHelper.getCookieByName(request, productService, "viewlist"));
		model.addAttribute("mapAvgStarByView", mapAvgStarByView);
		
		List<Product> list = new ArrayList<Product>();
	    productService.findTop5().forEach(pid->list.add(productService.findById(pid)));
	    Map<Long, Integer> mapReviewByTop5 = ratingService.findAllReviewByList(list);
		model.addAttribute("mapReviewByTop5", mapReviewByTop5);
		Map<Long, Double> mapAvgStarByTop5 = ratingService.findAllAvgStarByList(list);
		model.addAttribute("mapAvgStarByTop5", mapAvgStarByTop5);
		//}
		return "template/user/page/index";
	}

	public List<Product> productByCategory(List<Product> list, String categoryName) {
		return list.stream().filter(p -> p.getCategory().getName().equals(categoryName)).collect(Collectors.toList());
	}

	@GetMapping("/banner/display/{id}")
	@ResponseBody
	public void showBannerImage(@PathVariable("id") Long id, HttpServletResponse response)
			throws ServletException, IOException {
		log.info("showBannerImage: ");
		BannerGallery bannerGallery = bannerGalleryService.findById(id);
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (bannerGallery != null) {
			response.getOutputStream().write(bannerGallery.getImage());
		}
		response.getOutputStream().close();
	}

	@GetMapping("momo")
	public String getMoMoOrder(Model model) {
		String requestId = String.valueOf(System.currentTimeMillis());
		String orderId = String.valueOf(System.currentTimeMillis());
		long amount = 50000;

		String orderInfo = "Pay With MoMo";
		String returnURL = "https://google.com.vn";
		String notifyURL = "https://google.com.vn";
		String extraData = "";
		String bankCode = "SML";
		Environment environment = Environment.selectEnv("dev", Environment.ProcessType.PAY_GATE);
		CaptureMoMo captureMoMo = new CaptureMoMo(environment);
		CaptureMoMoRequest captureMoMoRequest = captureMoMo.createPaymentCreationRequest(orderId, requestId,
				Long.toString(amount), orderInfo, returnURL, notifyURL, extraData);
//		try {
//			CaptureMoMoResponse captureMoMoResponse = CaptureMoMo.process(environment, orderId, requestId, Long.toString(amount), orderInfo, returnURL, notifyURL, "");
//		}catch (Exception e){
//			model.addAttribute("response",e.getMessage());
//		}

		model.addAttribute("payment", captureMoMoRequest);

		return "template/user/page/momo";

	}
}
