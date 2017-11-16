package com.techelevator.alpha.model;

import javax.validation.constraints.AssertTrue;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class AppUser {
	private int userId;
	@NotBlank (message="Email is required.") @Email (message="Enter a valid email.")
	private String email;
	@NotBlank (message="Password is required.")
	private String password;
	
	private boolean goodPassword;
	@AssertTrue(message = "Enter a valid.")
	public boolean isGoodPassword(){
		if(password == null){
			return false;
		}
		boolean length = (password.length() >= 6);
		boolean containsUpper = false;
		for(int i = 0; i < password.length(); i++){
			if(Character.isUpperCase(password.charAt(i))){
				containsUpper = true;
				break;
			}
		}
		return (length && containsUpper);
	}
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUserId() {
		return userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
