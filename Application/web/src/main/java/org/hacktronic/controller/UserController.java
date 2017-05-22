package org.hacktronic.controller;

import org.hacktronic.service.UserService;
import org.hacktronic.service.data.UserFullname;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("hacktronic/user")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/fullname")
	public UserFullname getFulLName() {
		return userService.getFullName();
	}
	
}

