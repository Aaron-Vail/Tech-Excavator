package com.techelevator.alpha.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCPlotDAO implements PlotDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCPlotDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Long createPlot(Plot plot, Long userId) {
		return jdbcTemplate.queryForObject("INSERT INTO plot (user_id, plot_name, light_level, plant_id) VALUES (?,?,?,?) RETURNING plot_id", Long.class, userId, plot.getPlotName(), plot.getLightLevel(), plot.getPlantId());
	}

	@Override
	public void deletePlot(int plotId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void savePlots(List<Plot> plots, long userId) {
		for (Plot plot : plots){
			jdbcTemplate.update("UPDATE plot SET garden_id = ? WHERE plot_id = ? AND user_id = ?", plot.getGardenId(), plot.getPlotId(), userId);
		}
	}

	@Override
	public List<Plot> getPlotsByGarden(Long gardenId, long userId) {
		
		List<Plot> plots = new ArrayList<>();
		SqlRowSet results = jdbcTemplate.queryForRowSet("SELECT * FROM plot WHERE garden_id = ? and user_id = ?", gardenId, userId);
		while(results.next()){
			Plot plot = new Plot();
			plot.setLightLevel(results.getString("light_level"));
			plot.setPlotName(results.getString("plot_name"));
			plot.setPlantId(results.getInt("plant_id"));
			plot.setPlotId(results.getInt("plot_id"));
			
			plots.add(plot);
		}
		
		return plots;
	}

}
