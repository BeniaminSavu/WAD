package org.hacktronic.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.UserModel;
import org.hacktronic.persistence.repository.CommentRepository;
import org.hacktronic.persistence.repository.ProductRepository;
import org.hacktronic.service.data.CommentData;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentRepository commentRepository;

	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private UserService userService;
	
	public void create(CommentModel comment, int productId) {
		ProductModel product = productRepository.findById(productId);
		int userId = userService.getUserId();
		UserModel user = userService.findById(userId);
		comment.setProduct(product);
		comment.setUser(user);
		
		commentRepository.save(comment);
	}
	
	public List<CommentData> getProductComments(int productId) {
		ProductModel product = productRepository.findById(productId);
		List<CommentModel> models = commentRepository.findByProduct(product);
		List<CommentData> comments = new ArrayList<CommentData>();
		
		for (CommentModel model : models) {
			CommentData comment = new CommentData();
			comment.setMessage(model.getMessage());
			comment.setTitle(model.getTitle());
			comment.setUser(model.getUser().getFirstName() + " " + model.getUser().getLastName());
			comments.add(comment);
		}
		
		return comments;
	}

}
