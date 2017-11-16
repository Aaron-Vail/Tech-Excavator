package com.techelevator.alpha.model;

public interface AppUserDAO {
	public void createUser(String email, String password, String salt);
	public boolean isEmailAvailable(String email);
	public boolean searchForUserNameAndPassword(String email, String password);
	public AppUser getUserInfo(String email);
}
