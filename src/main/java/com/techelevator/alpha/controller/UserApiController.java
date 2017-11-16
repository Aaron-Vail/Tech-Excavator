package com.techelevator.alpha.controller;

import java.awt.List;

import javax.validation.Valid;

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
import com.techelevator.alpha.model.Message;
import com.techelevator.alpha.security.PasswordHasher;

@CrossOrigin(origins = "*")
@RestController 
public class UserApiController {
	
//	@Autowired
//	AppUserDao appUserDao;
	@Autowired
	PasswordHasher passwordHasher;
	
	@RequestMapping(path = "/user/register", method = RequestMethod.POST)
	public Message registerUser(@Valid @ModelAttribute AppUser newUser, BindingResult result){
	
		if(! result.hasErrors()){
//			byte[] salt = passwordHasher.generateRandomSalt();
//			String hashedPassword = passwordHasher.computeHash(password, salt);
//			appUserDao.createUser(email, hashedPassword, salt);
			return new Message();
		}
		else{
			Message message = new Message();
			result.getFieldErrors().stream().forEach(f -> message.addMessage(f.getDefaultMessage()));
			return message;
		}
	}
	

}
