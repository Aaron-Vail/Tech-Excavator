package com.techelevator.alpha.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(path = "/savePlots", method = RequestMethod.PUT)
	public void savePlot(@ModelAttribute List<Plot> plots, HttpSession session){
		
		plotDao.savePlots(plots, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/getPlotsByGarden", method = RequestMethod.GET)
	public List<Plot> getPlotsByGarden(@RequestParam Long gardenId, HttpSession session){
		return plotDao.getPlotsByGarden(gardenId, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	
}
