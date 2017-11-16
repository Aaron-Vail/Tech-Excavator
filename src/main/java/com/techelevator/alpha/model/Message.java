package com.techelevator.alpha.model;

import java.util.ArrayList;
import java.util.List;

public class Message {
	private List<String> messages = new ArrayList<>();

	public List<String> getMessages() {
		return messages;
	}

	public void addMessage(String message) {
		this.messages.add(message);
	}
	
	
}
