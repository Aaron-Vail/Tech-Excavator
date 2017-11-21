package com.techelevator.alpha.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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
		return jdbcTemplate.queryForObject("INSERT INTO plot (user_id, plot_name, light_level, plant_id) VALUES (?,?,?,?) RETURNING plot_id", Long.class, userId, plot.getName(), plot.getLightLevel(), plot.getPlantId());
	}

	@Override
	public void deletePlot(int plotId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void savePlot(Plot plot, long userId) {
		jdbcTemplate.update("UPDATE plot SET garden_id = ? WHERE plot_id = ? AND user_id = ?", plot.getGardenId(), plot.getPlotId(), userId);
	}

}
