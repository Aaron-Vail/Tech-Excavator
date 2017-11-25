package com.techelevator.alpha.controller;

import java.awt.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.alpha.model.AppUser;
import com.techelevator.alpha.model.AppUserDAO;
import com.techelevator.alpha.model.Message;
import com.techelevator.alpha.security.PasswordHasher;


//Change later
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
//			Note From Bobby: I changed message to return 0 if email address is already being used. Is now being handled in front end.
			message.addMessage("0");
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
	
	@PostMapping("/user/login")
	public String login(@ModelAttribute AppUser loginUser, HttpServletRequest request){
		if(! appUserDao.searchForUserNameAndPassword(loginUser.getEmail(), loginUser.getPassword())){
			return "invalid";
		}
		
		AppUser user = appUserDao.getUserInfo(loginUser.getEmail());
		
		request.getSession(true);
		request.changeSessionId();
		request.getSession().setAttribute("currentUser", user);
		if (user.isAdmin()){
			return "admin";
		}
		return "success";
	}
	
	@RequestMapping(path="/user/logout", method=RequestMethod.POST)
	public void logout(HttpSession session){
		session.removeAttribute("currentUser");
	}
	
	@RequestMapping(path="/user/currentUser", method = RequestMethod.GET)
	public AppUser getCurrentUser(HttpSession session, HttpServletRequest request){
		
		//Making sure the current user has all of the freshest gardens
		System.out.println(((AppUser)session.getAttribute("currentUser")).getUserId());
		AppUser user = appUserDao.getUserInfo(((AppUser)session.getAttribute("currentUser")).getEmail());
		request.getSession().setAttribute("currentUser", user);
		
		return user;
	}

}
