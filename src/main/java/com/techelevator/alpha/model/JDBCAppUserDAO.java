package com.techelevator.alpha.model;

import javax.sql.DataSource;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.alpha.security.PasswordHasher;

@Component
public class JDBCAppUserDAO implements AppUserDAO {
	
	private JdbcTemplate jdbcTemplate;
	private PasswordHasher passwordHasher;

	@Autowired
	public JDBCAppUserDAO(DataSource dataSource, PasswordHasher passwordHasher) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.passwordHasher = passwordHasher;
	}

	@Override
	public void createUser(String email, String password, String salt) {
		jdbcTemplate.update("INSERT INTO app_user(email, hashed_password, salt) VALUES (?, ?, ?)", email, password,
				salt);
	}
	
	public boolean isEmailAvailable(String email){
		SqlRowSet results = jdbcTemplate.queryForRowSet("SELECT * FROM app_user WHERE email = ?", email);
		return ! results.next();
	}

	@Override
	public boolean searchForUserNameAndPassword(String email, String password) {
		String sqlSearchForUser = "SELECT * FROM app_user WHERE email = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearchForUser, email);
		if(results.next()){
			String storedSalt = results.getString("salt");
			String storedPassword = results.getString("hashed_password");
			String hashedPassword = passwordHasher.computeHash(password, Base64.decode(storedSalt));
			return storedPassword.equals(hashedPassword);
		} else {
			return false;
		}
	}

	@Override
	public AppUser getUserInfo(String email) {
		AppUser user = new AppUser();
		String sqlSearchForUser = "SELECT * FROM app_user WHERE email = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearchForUser, email);
		results.next();
		user.setUserId(results.getLong("user_id"));
		user.setEmail(email);
		user.setAdmin(results.getBoolean("admin"));
		
		String sqlSearchForGardens = "SELECT * FROM garden g JOIN region r ON g.region = r.region_id WHERE user_id = ?";
		results = jdbcTemplate.queryForRowSet(sqlSearchForGardens, user.getUserId());
		
		while(results.next()){
			Garden garden = new Garden();
			garden.setGardenId(results.getLong("garden_id"));
			garden.setRegion(results.getInt("region"));
			garden.setPlotsJson(results.getString("plot_json"));
			garden.setGardenName(results.getString("garden_name"));
			user.addGarden(garden);
		}
		
		return user;
	}

}
