package org.hacktronic.service.helper;

public interface EmailSender {

	void sendMail(String to, String token);
	
}