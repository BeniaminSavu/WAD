package org.hacktronic.service;

import java.util.List;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;

	public List<ProductModel> findAllProducts() {
		List<ProductModel> products = productRepository.findAll();
		return products;
	}

	public void addCourse(ProductModel product) {
		productRepository.save(product);
	}

	public List<ProductModel> findProductsByCategory(String category) {
		List<ProductModel> products = productRepository.findByCategory(category);
		return products;
	}

	public ProductModel findProductById(int id) {
		return productRepository.findById(id);
	}

	public void removeById(int id) {
		productRepository.delete(id);
	}

	@Override
	public void addProduct(ProductModel product) {
		productRepository.save(product);
	}


}
