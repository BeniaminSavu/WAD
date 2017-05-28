package org.hacktronic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	
	@RequestMapping("/index.html")
	public String getIndexPage() {
		return "index";
	}
	
	@RequestMapping("/login.html")
	public String getLoginPage() {
		return "login";
	}
	
	@RequestMapping("/register.html")
	public String getRegisterPage() {
		return "register";
	}
	
	@RequestMapping("/product_new.html")
	public String getAddProductPage() {
		return "product_new";
	}
	
	@RequestMapping("/product_details.html")
	public String getProductDetailsPage() {
		return "product_details";
	}
	
	@RequestMapping("/products.html")
	public String getProductsPage() {
		return "products";
	}
	
	@RequestMapping("/product_summary.html")
	public String getCartPage() {
		return "cart";
	}
}

