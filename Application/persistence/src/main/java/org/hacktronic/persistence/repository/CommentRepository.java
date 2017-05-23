package org.hacktronic.persistence.repository;

import java.util.List;

import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.persistence.model.ProductModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends CrudRepository<CommentModel, Integer>{

	List<CommentModel> findByProduct(ProductModel product);
}
