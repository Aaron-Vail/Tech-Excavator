package com.techelevator.alpha.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class JDBCPlantsDAO implements PlantsDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCPlantsDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Plants getPlantById(long plantId) {
		Plants plant = new Plants();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM plant WHERE plant_id = ?",plantId);
		if(result.next()){
			plant.setPlantId(result.getLong("plant_id"));
			plant.setScientificName(result.getString("scientific_name"));
			plant.setCommonName(result.getString("common_name"));
			plant.setPricePerPlant(result.getBigDecimal("price_per_plant"));
			plant.setAreaPerPlant(result.getInt("area_per_plant"));
			plant.setDesiredLight(result.getString("desired_light"));
			plant.setImageLink(result.getString("image_link"));
			plant.setPlantingDirections(result.getString("planting_directions"));
			plant.setRegion(result.getInt("region"));
			
		}
		return plant;
	}
	

	@Override
	public List<Plants> getAllPlants() {
		
		List<Plants> plants = new ArrayList<>();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM plant");
		while(result.next()){
			Plants plant = new Plants();
			plant.setPlantId(result.getLong("plant_id"));
			plant.setScientificName(result.getString("scientific_name"));
			plant.setCommonName(result.getString("common_name"));
			plant.setPricePerPlant(result.getBigDecimal("price_per_plant"));
			plant.setAreaPerPlant(result.getInt("area_per_plant"));
			plant.setDesiredLight(result.getString("desired_light"));
			plant.setImageLink(result.getString("image_link"));
			plant.setPlantingDirections(result.getString("planting_directions"));
			plant.setRegion(result.getInt("region"));
			
			plants.add(plant);
		}
		
		return plants;
	}
}
	
	


