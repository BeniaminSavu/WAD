package org.hacktronic.controller;

import java.util.List;

import org.hacktronic.controller.response.NewProductResponse;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.service.ProductService;
import org.hacktronic.service.data.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("/hacktronic/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping(params = { "id" })
	public String getProductById(@RequestParam("id") int productId) {
		productService.findProductById(productId);
		return "dummy";
	}

	@GetMapping("/all")
	public String viewCourses() {
		productService.findAllProducts();
		return "dummy";
	}

	@GetMapping("/{category}")
	public String viewCoursesByType(@PathVariable("category") String productCategory) {
		productService.findProductsByCategory(productCategory);
		return "dummy";
	}

	@PostMapping("/add")
	public NewProductResponse processNewProductForm(@RequestBody ProductModel newProduct) {
		productService.addProduct(newProduct);
		NewProductResponse response = new NewProductResponse();
		response.setMessage("Product added");
		response.setStatus(200);
		return response;
	}
	
	@GetMapping("/latest")
	public List<ProductInfo> getLatestProducts() {
		return productService.latestProducts();
	}

}
