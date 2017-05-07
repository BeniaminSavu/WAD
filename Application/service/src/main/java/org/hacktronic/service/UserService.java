package org.hacktronic.service;

import java.util.Set;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.UserModel;



public interface UserService {

	public void createUser(UserModel user);

	public boolean verify(String userToken);

	public int getUserId();

	public UserModel findById(int id);

	public String getUsername();

	public Set<ProductModel> getOwnedCourses();

}
