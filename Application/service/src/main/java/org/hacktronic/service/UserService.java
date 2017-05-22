package org.hacktronic.service;

import java.util.Set;

import org.hacktronic.persistence.model.ProductModel;
import org.hacktronic.persistence.model.UserModel;
import org.hacktronic.service.data.UserFullname;



public interface UserService {

	public void createUser(UserModel user);

	public boolean verify(String userToken);

	public int getUserId();

	public UserModel findById(int id);

	public String getUsername();

	public Set<ProductModel> getOwnedCourses();

	public UserFullname getFullName();

}
