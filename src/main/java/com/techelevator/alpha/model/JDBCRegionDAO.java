package com.techelevator.alpha.model;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCRegionDAO implements RegionDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCRegionDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Region getAllRegions() {
		Region region = new Region();
		SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT * FROM region");
		if(result.next()){
			region.setRegionId(result.getInt("region_id"));
			region.setClimate(result.getNString("climate"));
			
			return region;
		}
		
		return null;
	}

}
