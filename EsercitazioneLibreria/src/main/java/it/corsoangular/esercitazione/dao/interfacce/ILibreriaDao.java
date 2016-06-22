package it.corsoangular.esercitazione.dao.interfacce;

import java.util.List;

import it.corsoangular.esercitazione.domain.Libro;

public interface ILibreriaDao {

	static final String QUERY_CERCA_LIBRO_AUTORE = "SELECT * FROM LIBRERIA WHERE AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_TITOLO = "SELECT * FROM LIBRERIA WHERE TITOLO = ?";
	
	static final String QUERY_CERCA_LIBRO_TITOLO_AUTORE = "SELECT * FROM LIBRERIA WHERE TITOLO = ? AND AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_ALL = "SELECT * FROM LIBRERIA";

	static final String QUERY_AGGIUNGI_LIBRO = "INSERT INTO LIBRERIA (IDENTIFICATIVO, TITOLO, AUTORE, DATA_PUBBLICAZIONE) "
			+ "VALUES (IDENTIFICATIVO_SEQUENCE.nextval, ? , ? , ? )";

	public List<Libro> cercaLibro(String autore, String titolo);

	public void aggiungiLibro(Libro libro);

}
