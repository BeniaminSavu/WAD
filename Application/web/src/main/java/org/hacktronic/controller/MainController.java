package org.hacktronic.controller;


import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public Test test(){
		Test test = new Test();
		test.setValue(12);
		test.setSum(20);
		return test;
	}
}
