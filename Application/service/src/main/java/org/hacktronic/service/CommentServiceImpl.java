package org.hacktronic.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.repository.CommentRepository;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentRepository commentRepository;

	@Autowired
	private ProductService productService;
	
	public void create(CommentModel comment, int productId) {
		ProductModel product = productService.findProductById(productId);
		comment.setProduct(product);
		
		commentRepository.save(comment);
	}

}
