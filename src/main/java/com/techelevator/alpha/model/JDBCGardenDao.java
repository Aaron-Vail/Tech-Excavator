package com.techelevator.alpha.model;

import java.time.LocalDate;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCGardenDao implements GardenDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCGardenDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Garden getGarden(long gardenId, long userId) {
		Garden garden = new Garden();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM garden g JOIN region r ON g.region = r.region_id WHERE user_id = ? AND garden_id = ? AND date_deleted IS NULL",userId, gardenId);
		if(result.next()){
			garden.setGardenId(result.getLong("garden_id"));
			garden.setGardenName(result.getString("garden_name"));
			garden.setPlotsJson(result.getString("plot_json"));
			garden.setRegion(result.getString("climate"));
			return garden;
		}
		return null;
	}

	@Override
	public Garden newGarden(Garden garden, long userId) {
		garden.setGardenId(jdbcTemplate.queryForObject("INSERT INTO garden (region, garden_name, user_id) VALUES (?,?,?) RETURNING garden_id", Long.class, garden.getRegion(), garden.getGardenName(), userId));
		return garden;
	}

	@Override
	public void deleteGarden(long gardenId, long userId) {
		jdbcTemplate.update("UPDATE garden SET date_deleted = ? WHERE user_id = ? AND garden_id = ?", LocalDate.now(), userId, gardenId);
	}

	@Override
	public void saveGarden(Garden garden, long userId) {
		jdbcTemplate.update("UPDATE garden SET plot_jsone = ? WHERE user_id = ? AND garden_id = ?", garden.getPlotsJson(), userId, garden.getGardenId());
		
	}

	
}
