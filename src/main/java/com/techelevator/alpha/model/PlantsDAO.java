package com.techelevator.alpha.model;

import java.math.BigDecimal;
import java.util.List;

public interface PlantsDAO {

	public Plants getPlantById(long plantId);
	public List<Plants> getAllPlants();
	public int getPlantPopularity(long plantId);

}
