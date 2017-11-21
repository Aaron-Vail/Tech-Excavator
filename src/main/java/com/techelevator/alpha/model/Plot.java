package com.techelevator.alpha.model;

public class Plot {
	
	private int plotId;
	private String name;
	private int plantId;
	private String lightLevel;
	private int gardenId;
	public int getPlotId() {
		return plotId;
	}
	public void setPlotId(int plotId) {
		this.plotId = plotId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPlantId() {
		return plantId;
	}
	public void setPlantId(int plantId) {
		this.plantId = plantId;
	}
	public String getLightLevel() {
		return lightLevel;
	}
	public void setLightLevel(String lightLevel) {
		this.lightLevel = lightLevel;
	}
	public int getGardenId() {
		return gardenId;
	}
	public void setGardenId(int gardenId) {
		this.gardenId = gardenId;
	}
	
}
