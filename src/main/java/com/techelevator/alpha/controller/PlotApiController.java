package com.techelevator.alpha.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.alpha.model.AppUser;
import com.techelevator.alpha.model.Plot;
import com.techelevator.alpha.model.PlotDAO;

//Change later
@CrossOrigin(origins = "*")
@RestController 
public class PlotApiController {

	@Autowired
	PlotDAO plotDao;
	
	@RequestMapping(path = "/createPlot", method = RequestMethod.POST)
	public Long newPlot(@ModelAttribute Plot plot, HttpSession session){
		//return plotDao.createPlot(plot, ((AppUser)session.getAttribute("currentUser")).getUserId());
		
		//Temporary for testing
		return plotDao.createPlot(plot, 1L);
		
	}
	
	@RequestMapping(path = "/savePlot", method = RequestMethod.PUT)
	public void savePlot(@ModelAttribute Plot plot, HttpSession session){
		plotDao.savePlot(plot, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	
}
