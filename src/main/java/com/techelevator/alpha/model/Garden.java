package com.techelevator.alpha.model;

public class Garden {
	private long gardenId;
	private String gardenName;
	private String region;
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
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getPlotsJson() {
		return plotsJson;
	}
	public void setPlotsJson(String plotsJson) {
		this.plotsJson = plotsJson;
	}
}
