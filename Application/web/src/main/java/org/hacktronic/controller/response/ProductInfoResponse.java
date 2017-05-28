package org.hacktronic.controller.response;

import java.util.List;

import org.hacktronic.service.data.ProductInfo;

public class ProductInfoResponse extends Response{
	private List<ProductInfo> products;
	private int count;
	
	public List<ProductInfo> getProducts() {
		return products;
	}
	public void setProducts(List<ProductInfo> products) {
		this.products = products;
		setCount(products.size());
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
}
