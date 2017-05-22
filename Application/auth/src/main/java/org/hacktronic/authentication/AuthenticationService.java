package org.hacktronic.authentication;

import org.hacktronic.persistence.model.UserModel;

public interface AuthenticationService {
	
	void createUser(UserModel user);

	String validate(String userToken);
}