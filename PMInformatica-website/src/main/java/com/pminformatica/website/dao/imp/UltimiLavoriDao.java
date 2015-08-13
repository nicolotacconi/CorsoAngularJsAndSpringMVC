package com.pminformatica.website.dao.imp;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.pminformatica.website.dao.interfacce.IUltimiLavoriDao;
import com.pminformatica.website.dto.UltimiLavori;

public class UltimiLavoriDao implements IUltimiLavoriDao {

	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<UltimiLavori> getUltimiLavori() {
		return jdbcTemplate.query(SELECT_ULTIMI_LAVORI, new Object[] {},
				new BeanPropertyRowMapper<UltimiLavori>(UltimiLavori.class));
	}

}
