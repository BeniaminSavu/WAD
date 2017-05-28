package org.hacktronic.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.repository.ProductRepository;
import org.hacktronic.service.data.ProductData;
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

	public List<ProductInfo> findProductsByCategory(String category) {
		List<ProductModel> products = productRepository.findByCategory(category);
		List<ProductInfo> productsInfo = new ArrayList<ProductInfo>();

		for (ProductModel product : products) {
			ProductInfo productInfo = new ProductInfo();
			productInfo.setName(product.getName());
			productInfo.setDescription(product.getDescription());
			productInfo.setPrice(product.getPrice());
			productInfo.setId(product.getId());
			productsInfo.add(productInfo);
		}
		return productsInfo;
	}

	public ProductData findProductById(int id) {
		ProductModel model = productRepository.findById(id);
		ProductData product = new ProductData();
		product.setName(model.getName());
		product.setDescription(model.getDescription());
		product.setManufacturer(model.getManufacturer());
		product.setPrice(model.getPrice());
		product.setUnitsInStock(model.getUnitsInStock());

		return product;
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
			productInfo.setId(product.getId());
			productsInfo.add(productInfo);
		}
		return productsInfo;
	}

}
