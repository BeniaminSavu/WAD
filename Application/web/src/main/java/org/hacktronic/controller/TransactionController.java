package org.hacktronic.controller;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.TransactionModel;
import org.hacktronic.persistence.model.UserModel;
import org.hacktronic.service.ProductService;
import org.hacktronic.service.TransactionService;
import org.hacktronic.service.UserService;
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
@RequestMapping("/cart")
public class TransactionController {

	@Autowired
	private TransactionService transactionService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping
	public TransactionModel transaction(Model model) {
		TransactionModel transaction = transactionService.getActiveTransaction();
		return transaction;
	}
	
	@PostMapping("add/{productId}")
	public String addItem(@PathVariable("productId") int productId) {
		TransactionModel transaction = transactionService.getActiveTransaction();
		if (transaction == null) {
			int userId = userService.getUserId();
			UserModel user = userService.findById(userId);
			transaction = transactionService.create(new TransactionModel(user));
		}
		ProductModel product = productService.findProductById(productId);
		if (product == null) {
			throw new IllegalArgumentException("product is null");
		}
		transaction.addTransactionItem(product);
		transactionService.update(transaction);
		return "dummy";
	}
	
	@DeleteMapping("/remove/{productId}")
	public String removeItem(@PathVariable("productId") int productId) {
		TransactionModel transaction = transactionService.getActiveTransaction();
		ProductModel product = productService.findProductById(productId);
		if (product == null) {
			throw new IllegalArgumentException("product is null");
		}
		transaction.removeTransactionItem(product);
		transactionService.update(transaction);
		return "dummy";
	}
	
	@PutMapping("/clear")
	public String clearCart(Model model) {
		TransactionModel transaction = transactionService.getActiveTransaction();
		transaction.getProducts().clear();
		transaction.setGrandTotal(0);
		transactionService.update(transaction);
		return "cart";
	}
	
	@PutMapping("/checkout")
	public String transactionCheckout(Model model) {
		TransactionModel transaction = transactionService.getActiveTransaction();
		transaction.setApproval("FINISHED");
		transactionService.update(transaction);
		int userId = userService.getUserId();
		transaction = transactionService.create(new TransactionModel(userService.findById(userId)));
		return "cart";
	}
	
}
