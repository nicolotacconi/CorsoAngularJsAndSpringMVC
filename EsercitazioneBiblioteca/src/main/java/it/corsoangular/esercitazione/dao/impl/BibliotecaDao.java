package it.corsoangular.esercitazione.dao.impl;

import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import it.corsoangular.esercitazione.dao.interfacce.IBibliotecaDao;
import it.corsoangular.esercitazione.domain.Libro;

@Repository
public class BibliotecaDao extends JdbcDaoSupport implements IBibliotecaDao {

	static final String QUERY_CERCA_LIBRO_AUTORE = "SELECT * FROM BIBLIOTECA WHERE AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_TITOLO = "SELECT * FROM BIBLIOTECA WHERE TITOLO = ?";

	static final String QUERY_CERCA_LIBRO_TITOLO_AUTORE = "SELECT * FROM BIBLIOTECA WHERE TITOLO = ? AND AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_ALL = "SELECT * FROM BIBLIOTECA";

	static final String QUERY_AGGIUNGI_LIBRO = "INSERT INTO BIBLIOTECA (IDENTIFICATIVO, TITOLO, AUTORE, DATA_PUBBLICAZIONE) "
			+ "VALUES (IDENTIFICATIVO_SEQUENCE.nextval, ? , ? , ? )";

	public List<Libro> cercaLibro(String autore, String titolo) {

		if (StringUtils.isBlank(titolo) && StringUtils.isBlank(autore)) {
			return getJdbcTemplate().query(QUERY_CERCA_LIBRO_ALL, new Object[] {},
					new BeanPropertyRowMapper<Libro>(Libro.class));

		} else {
			if (StringUtils.isNotBlank(titolo) && StringUtils.isNotBlank(autore)) {
				return getJdbcTemplate().query(QUERY_CERCA_LIBRO_TITOLO_AUTORE, new Object[] { titolo, autore },
						new BeanPropertyRowMapper<Libro>(Libro.class));
			} else {
				if (StringUtils.isNotBlank(titolo)) {
					return getJdbcTemplate().query(QUERY_CERCA_LIBRO_TITOLO, new Object[] { titolo },
							new BeanPropertyRowMapper<Libro>(Libro.class));
				} else {
					return getJdbcTemplate().query(QUERY_CERCA_LIBRO_AUTORE, new Object[] { autore },
							new BeanPropertyRowMapper<Libro>(Libro.class));
				}
			}
		}

	}

	public void aggiungiLibro(Libro libro) {
		getJdbcTemplate().update(QUERY_AGGIUNGI_LIBRO,
				new Object[] { libro.getTitolo(), libro.getAutore(), libro.getDataPubblicazione() });

	}

	@Autowired
	public BibliotecaDao(DataSource dataSource) {
		super.setDataSource(dataSource);
	}

}
