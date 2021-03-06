package org.hacktronic.controller;

import java.util.List;

import org.hacktronic.controller.response.NewProductResponse;
import org.hacktronic.controller.response.ProductInfoResponse;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.service.ProductService;
import org.hacktronic.service.data.ProductData;
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

	@GetMapping("/{id}")
	public ProductData getProductById(@PathVariable("id") int productId) {
		return productService.findProductById(productId);
	}

	@GetMapping("/all")
	public String viewCourses() {
		productService.findAllProducts();
		return "dummy";
	}

	@GetMapping("/type/{category}")
	public ProductInfoResponse viewCoursesByType(@PathVariable("category") String productCategory) {
		ProductInfoResponse response = new ProductInfoResponse(); 
		response.setProducts(productService.findProductsByCategory(productCategory));
		return response;
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
