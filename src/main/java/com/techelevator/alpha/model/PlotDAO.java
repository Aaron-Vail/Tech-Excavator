package com.techelevator.alpha.model;

public interface PlotDAO {
	public void createPlot(String plotName, int plantId, String lightLevel, int gardenId);
	public void deletePlot(int plotId);

}
