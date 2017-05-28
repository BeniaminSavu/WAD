package org.hacktronic.controller.response;

import java.util.List;

import org.hacktronic.service.data.ProductInfo;

public class MiniCartResponse extends Response {

	private int total;
	private int numberOfProducts;
	private List<ProductInfo> products;

	public List<ProductInfo> getProducts() {
		return products;
	}

	public void setProducts(List<ProductInfo> products) {
		this.products = products;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getNumberOfProducts() {
		return numberOfProducts;
	}

	public void setNumberOfProducts(int numberOfProducts) {
		this.numberOfProducts = numberOfProducts;
	}

}
