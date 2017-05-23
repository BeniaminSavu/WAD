package org.hacktronic.service;

import java.util.List;

import org.hacktronic.persistence.model.CommentModel;
import org.hacktronic.service.data.CommentData;

public interface CommentService {

	void create(CommentModel comment, int productId);
	
	List<CommentData> getProductComments(int productId);

}
