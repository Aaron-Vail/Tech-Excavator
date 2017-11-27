package com.techelevator.alpha.model;

import java.util.List;

public interface PlotDAO {
	public Long createPlot(Plot plot, Long userId);
	public void deletePlot(int plotId);
	public void savePlot(Plot plot, long userId);
	public List<Plot> getPlotsByGarden(Long gardenId, long userId);

}
