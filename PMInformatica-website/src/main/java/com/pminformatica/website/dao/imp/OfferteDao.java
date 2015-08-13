package com.pminformatica.website.dao.imp;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.pminformatica.website.dao.interfacce.IOfferteDao;
import com.pminformatica.website.dto.Offerte;

public class OfferteDao implements IOfferteDao {

	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Offerte> getOfferte() {
		return jdbcTemplate.query(SELECT_OFFERTE, new Object[] {},
				new BeanPropertyRowMapper<Offerte>(Offerte.class));
	}

}
