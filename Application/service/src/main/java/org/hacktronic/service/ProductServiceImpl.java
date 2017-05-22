package org.hacktronic.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.repository.ProductRepository;
import org.hacktronic.service.data.ProductInfo;
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
		product.setDate(new Date());
		productRepository.save(product);
	}

	@Override
	public List<ProductInfo> latestProducts() {
		List<ProductModel> products = productRepository.findFirst6ByOrderByDateDesc();
		List<ProductInfo> productsInfo = new ArrayList<ProductInfo>();
		
		for (ProductModel product : products) {
			ProductInfo productInfo = new ProductInfo();
			productInfo.setName(product.getName());
			productInfo.setDescription(product.getDescription());
			productInfo.setPrice(product.getPrice());
			productsInfo.add(productInfo);
		}
		return productsInfo;
	}


}
