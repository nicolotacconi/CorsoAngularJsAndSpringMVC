package com.pminformatica.website.dao.imp;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.pminformatica.website.dao.interfacce.ISecurityDao;
import com.pminformatica.website.dto.Security;

public class SecurityDao implements ISecurityDao {

	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public Security checkUsernameEPassword(String username, String password) {
		return jdbcTemplate.queryForObject(SELECT_SECURITY, new Object[] {
				username, password }, new BeanPropertyRowMapper<Security>(
				Security.class));

	}

}
