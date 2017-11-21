package com.techelevator.alpha.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.alpha.model.AppUser;

//Change later
@CrossOrigin(origins = "*")
@RestController 
public class PlotApiController {

	@Autowired
	PlotDao plotDao;
	
	@RequestMapping(path = "/newPlot", method = RequestMethod.POST)
	public Long newPlot(@ModelAttribute Plot plot, HttpSession session){
		return plotDao.newPlot(plot, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	
}
