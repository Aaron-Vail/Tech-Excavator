package com.techelevator.alpha.model;

import java.util.List;

public interface PlantsDAO {

	public Plants getPlantById(long plantId);
	public List<Plants> getAllPlants();

}
