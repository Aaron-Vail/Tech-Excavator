package com.techelevator.alpha.controller;

import java.awt.List;

import javax.validation.Valid;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.alpha.model.AppUser;
import com.techelevator.alpha.model.AppUserDAO;
import com.techelevator.alpha.model.Message;
import com.techelevator.alpha.security.PasswordHasher;

@CrossOrigin(origins = "*")
@RestController 
public class UserApiController {
	
	@Autowired
	AppUserDAO appUserDao;
	@Autowired
	PasswordHasher passwordHasher;
	
	@RequestMapping(path = "/user/register", method = RequestMethod.POST)
	public Message registerUser(@Valid @ModelAttribute AppUser newUser, BindingResult result){
		
		Message message = new Message();
		
		if(! appUserDao.isEmailAvailable(newUser.getEmail())){
			message.addMessage("That email is unavaiable.");
			return message;
		}else if(! result.hasErrors()){
			byte[] salt = passwordHasher.generateRandomSalt();
			String hashedPassword = passwordHasher.computeHash(newUser.getPassword(), salt);
			appUserDao.createUser(newUser.getEmail(), hashedPassword, new String(Base64.encode(salt)));
			return message;
		}
		else{
			result.getFieldErrors().stream().forEach(f -> message.addMessage(f.getDefaultMessage()));
			return message;
		}
	}
	
	@RequestMapping(path="/user/login", method=RequestMethod.POST)
	public AppUser login(@RequestParam String email, @RequestParam String password){
		
		return new AppUser();
	}

}
