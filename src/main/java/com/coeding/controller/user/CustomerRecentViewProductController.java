package com.coeding.controller.user;

import com.coeding.entity.UserDetail;
import com.coeding.helper.CookieHelper;
import com.coeding.service.ProductService;
import com.coeding.service.RatingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * @author NhanLe
 * @author Lam Cong Hau
 * Review rating star
 * */
@Controller
@RequestMapping("/customer/recent")
public class CustomerRecentViewProductController {

    private CookieHelper cookieHelper;
    private ProductService productService;
    private RatingService ratingService; 
    @Autowired
    public CustomerRecentViewProductController(CookieHelper cookieHelper, ProductService productService, RatingService ratingService) {
        this.cookieHelper = cookieHelper;
        this.productService = productService;
        this.ratingService = ratingService;
    }

    @GetMapping
    public String customerRecentPage(Authentication authentication, Model model, HttpServletRequest res){
//        UserDetail userDetails = (UserDetail) authentication.getPrincipal();
//        model.addAttribute("user",userDetails.getUser());
    	
        model.addAttribute("viewlist", cookieHelper.getCookieByName(res,productService,"viewlist"));
        
		//review {
		Map<Long, Integer> mapReviewByView = ratingService.findAllReviewByList(cookieHelper.getCookieByName(res, productService, "viewlist"));
		model.addAttribute("mapReviewByView", mapReviewByView);
		Map<Long, Double> mapAvgStarByView = ratingService.findAllAvgStarByList(cookieHelper.getCookieByName(res, productService, "viewlist"));
		model.addAttribute("mapAvgStarByView", mapAvgStarByView);
		//}
        return  "template/user/customer/recentview/recent-view";
    }
    
}
