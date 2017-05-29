package org.hacktronic.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hacktronic.controller.response.MiniCartResponse;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.TransactionModel;
import org.hacktronic.persistence.model.UserModel;
import org.hacktronic.service.ProductService;
import org.hacktronic.service.TransactionService;
import org.hacktronic.service.UserService;
import org.hacktronic.service.data.ProductInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("/hacktronic/cart")
public class TransactionController {

	@Autowired
	private TransactionService transactionService;
	
	@GetMapping
	@Transactional
	public MiniCartResponse transaction() {
		TransactionModel transaction = transactionService.getActiveTransaction();
		List<ProductInfo> products = new ArrayList<ProductInfo>();
		MiniCartResponse response = new MiniCartResponse();
		response.setNumberOfProducts(transaction.getProducts().size());
		response.setTotal(transaction.getGrandTotal());
		for (ProductModel model : transaction.getProducts()) {
			ProductInfo product = new ProductInfo();
			product.setDescription(model.getDescription());
			product.setName(model.getName());
			product.setPrice(model.getPrice());
			product.setId(model.getId());
			products.add(product);
		}
		response.setProducts(products);
		return response;
	}
	
	@GetMapping("add/{productId}")
	@Transactional
	public String addItem(@PathVariable("productId") int productId) {
		transactionService.addProductToTransaction(productId);
		return "dummy";
	}
	
	@GetMapping("/remove/{productId}")
	@Transactional
	public String removeSameItem(@PathVariable("productId") int productId) {
		transactionService.removeSameProductsFromTransaction(productId);
		return "dummy";
	}
	
	@GetMapping("/remove/one/{productId}")
	@Transactional
	public String removeItem(@PathVariable("productId") int productId) {
		transactionService.removeProductFromTransaction(productId);
		return "dummy";
	}
	
	@PutMapping("/clear")
	public String clearCart() {
		transactionService.clearAllProducts();
		return "cart";
	}
	
	@GetMapping("/checkout")
	@Transactional
	public String transactionCheckout() {
		transactionService.checkout();
		return "cart";
	}
	
}
