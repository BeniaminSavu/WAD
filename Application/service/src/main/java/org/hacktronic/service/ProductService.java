package org.hacktronic.service;

import java.util.List;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.service.data.ProductInfo;


public interface ProductService {

	void addProduct(ProductModel product);

	List<ProductModel> findAllProducts();

	List<ProductModel> findProductsByCategory(String category);

	ProductModel findProductById(int id);

	void removeById(int id);

	List<ProductInfo> latestProducts();

}
