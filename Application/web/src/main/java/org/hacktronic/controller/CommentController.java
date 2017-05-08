package org.hacktronic.controller;

import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.service.CommentService;
import org.hacktronic.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@CrossOrigin
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;

	@PostMapping("/add/{productId}")
	public String addComment(@PathVariable("productId") int productId, @RequestBody CommentModel newComment) {
		commentService.create(newComment, productId);
		return "dummy";
	}

}
