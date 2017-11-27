package com.techelevator.alpha.model;

import java.math.BigDecimal;
import java.util.List;

public interface PlantsDAO {

	public Plants getPlantById(long plantId);
	public List<Plants> getAllPlants();
	public void addPlant(String scientificName, String commonName, BigDecimal pricePerPlant, int areaPerPlant, String desiredLight, String imageLink, String plantingDirections, int region);

}
