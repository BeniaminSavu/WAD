package org.hacktronic.controller;

import java.util.List;

import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.service.CommentService;
import org.hacktronic.service.ProductService;
import org.hacktronic.service.data.CommentData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin
@RequestMapping("/hacktronic/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;

	@PostMapping("/add/{productId}")
	public String addComment(@PathVariable("productId") int productId, @RequestBody CommentModel newComment) {
		commentService.create(newComment, productId);
		return "dummy";
	}

	@GetMapping("/{productId}")
	public List<CommentData> getComments(@PathVariable("productId") int productId) {
		return commentService.getProductComments(productId);
	}

}
