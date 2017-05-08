package org.hacktronic.persistence.repository;

import java.util.List;

import org.hacktronic.persistence.model.ProductModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<ProductModel, Integer>{
	
	List<ProductModel> findAll();

	List<ProductModel> findByCategory(String category);

	ProductModel findById(int id);
}
