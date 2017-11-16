package com.techelevator.alpha.model;

import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.AssertTrue;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"password","goodPassword"})
public class AppUser {
	
	private long userId = 0;
	private List<Garden> gardens = new ArrayList<>();
	private boolean isAdmin = false;
	
	
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
	public long getUserId() {
		return userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public List<Garden> getGardens() {
		return gardens;
	}
	public void addGarden(Garden garden) {
		gardens.add(garden);
	}



	public boolean isAdmin() {
		return isAdmin;
	}



	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	
}
