package com.techelevator.alpha.model;

public class Garden {
	private long gardenId;
	private String gardenName;
	private int region;
	private String climate;
	private String plotsJson = null;

	public long getGardenId() {
		return gardenId;
	}
	public void setGardenId(long gardenId) {
		this.gardenId = gardenId;
	}
	public String getGardenName() {
		return gardenName;
	}
	public void setGardenName(String name) {
		this.gardenName = name;
	}
	public int getRegion() {
		return region;
	}
	public void setRegion(int region) {
		this.region = region;
	}
	public String getPlotsJson() {
		return plotsJson;
	}
	public void setPlotsJson(String plotsJson) {
		this.plotsJson = plotsJson;
	}
	public String getClimate() {
		return climate;
	}
	public void setClimate(String climate) {
		this.climate = climate;
	}
}
