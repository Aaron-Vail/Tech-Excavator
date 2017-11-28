package com.techelevator.alpha.controller;

import java.util.ArrayList;
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
		
		
		return plotDao.createPlot(plot, ((AppUser)session.getAttribute("currentUser")).getUserId());
		
		//Temporary for testing
		//return plotDao.createPlot(plot, 1L);
		
	}
	
	@RequestMapping(path = "/savePlot", method = RequestMethod.POST)
	public void savePlot(@ModelAttribute Plot plot, HttpSession session){
		
		plotDao.savePlots(plot, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/getPlotsByGarden", method = RequestMethod.GET)
	public List<Plot> getPlotsByGarden(@RequestParam Long gardenId, HttpSession session){
		return plotDao.getPlotsByGarden(gardenId, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}
	
	@RequestMapping(path = "/getPlotById", method = RequestMethod.GET)
	public Plot getPlotById(@RequestParam int plotId, HttpSession session){
		return plotDao.getPlotById(plotId, ((AppUser)session.getAttribute("currentUser")).getUserId());
	}

	
	
}
