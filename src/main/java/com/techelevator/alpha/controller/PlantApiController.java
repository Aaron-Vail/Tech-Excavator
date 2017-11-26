package com.techelevator.alpha.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.techelevator.alpha.model.Plants;
import com.techelevator.alpha.model.PlantsDAO;

@CrossOrigin(origins = "*")

@RestController 
public class PlantApiController {

	@Autowired
	PlantsDAO plantsDao;
	
	@RequestMapping(path = "/getPlantById", method = RequestMethod.GET)
	public Plants getPlantsById(@RequestParam long plantId){
		return plantsDao.getPlantById(plantId);
	}
	
	@RequestMapping(path = "/getAllPlants", method = RequestMethod.POST)
	public Plants getAllPlants(@ModelAttribute Plants plant){
		return plantsDao.getAllPlants();
	}
	
	
}