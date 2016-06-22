package it.corsoangular.esercitazione.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.StringUtils;

import it.corsoangular.esercitazione.dao.interfacce.ILibreriaDao;
import it.corsoangular.esercitazione.domain.Libro;

public class LibreriaDao implements ILibreriaDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(@Qualifier("dataSource") DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Libro> cercaLibro(String autore, String titolo) {

		if (StringUtils.isEmpty(titolo) && StringUtils.isEmpty(autore)) {
			return jdbcTemplate.query(QUERY_CERCA_LIBRO_ALL, new Object[] {},
					new BeanPropertyRowMapper<Libro>(Libro.class));

		} else {
			if (!StringUtils.isEmpty(titolo) && !StringUtils.isEmpty(autore)) {
				return jdbcTemplate.query(QUERY_CERCA_LIBRO_TITOLO_AUTORE, new Object[] { titolo, autore },
						new BeanPropertyRowMapper<Libro>(Libro.class));
			} else {
				if (!StringUtils.isEmpty(titolo)) {
					return jdbcTemplate.query(QUERY_CERCA_LIBRO_TITOLO, new Object[] { titolo },
							new BeanPropertyRowMapper<Libro>(Libro.class));
				} else {
					return jdbcTemplate.query(QUERY_CERCA_LIBRO_AUTORE, new Object[] { autore },
							new BeanPropertyRowMapper<Libro>(Libro.class));
				}
			}
		}

	}

	public void aggiungiLibro(Libro libro) {
		jdbcTemplate.update(QUERY_AGGIUNGI_LIBRO,
				new Object[] { libro.getTitolo(), libro.getAutore(), libro.getDataPubblicazione() });

	}

}
