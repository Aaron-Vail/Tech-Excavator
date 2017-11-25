package com.techelevator.alpha.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.alpha.model.AppUser;
import com.techelevator.alpha.model.Garden;
import com.techelevator.alpha.model.GardenDao;

//Change later
@CrossOrigin(origins = "*")
@RestController 
public class GardenApiController {

	@Autowired
	GardenDao gardenDao;
	
	@RequestMapping(path = "/getGarden", method = RequestMethod.GET)
	public Garden getGarden(HttpSession session, @RequestParam long gardenId){
		return gardenDao.getGarden(gardenId, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/newGarden", method = RequestMethod.POST)
	public Garden newGarden(HttpSession session, @ModelAttribute Garden garden){
		return gardenDao.newGarden(garden, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/deleteGarden", method = RequestMethod.POST)
	public void deleteGarden(HttpSession session, @RequestParam long gardenId){
		gardenDao.deleteGarden(gardenId, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/saveGarden", method = RequestMethod.POST)
	public void saveGarden(HttpSession session, @ModelAttribute Garden garden){
		gardenDao.saveGarden(garden, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
}
