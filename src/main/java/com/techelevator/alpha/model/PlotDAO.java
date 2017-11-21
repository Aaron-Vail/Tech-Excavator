package com.techelevator.alpha.model;

public interface PlotDAO {
	public Long createPlot(Plot plot, Long userId);
	public void deletePlot(int plotId);
	public void savePlot(Plot plot, long userId);

}
