package com.techelevator.alpha.model;

public interface GardenDao {
	
	public Garden getGarden(long gardenId, long userId);

	public Garden newGarden(Garden garden, long userId);

	public void deleteGarden(long gardenId, long userId);

	public void saveGarden(Garden garden, long userId);

}
