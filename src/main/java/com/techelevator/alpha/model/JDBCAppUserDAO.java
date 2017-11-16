package com.techelevator.alpha.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.alpha.security.PasswordHasher;

@Component
public class JDBCAppUserDAO implements AppUserDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCAppUserDAO(DataSource dataSource, PasswordHasher passwordHasher) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
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

}
