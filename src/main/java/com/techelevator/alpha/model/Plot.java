package com.techelevator.alpha.model;

public class Plot {
	
	private int plotId;
	private String plotName;
	private int plantId;
	private String lightLevel;
	private int gardenId;
	
	
	public int getPlotId() {
		return plotId;
	}
	public void setPlotId(int plotId) {
		this.plotId = plotId;
	}
	public String getPlotName() {
		return plotName;
	}
	public void setPlotName(String name) {
		this.plotName = name;
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
