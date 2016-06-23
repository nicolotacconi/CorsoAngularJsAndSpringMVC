package it.corsoangular.esercitazione.dao.interfacce;

import java.util.List;

import it.corsoangular.esercitazione.domain.Libro;

public interface IBibliotecaDao {

	static final String QUERY_CERCA_LIBRO_AUTORE = "SELECT * FROM BIBLIOTECA WHERE AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_TITOLO = "SELECT * FROM BIBLIOTECA WHERE TITOLO = ?";

	static final String QUERY_CERCA_LIBRO_TITOLO_AUTORE = "SELECT * FROM BIBLIOTECA WHERE TITOLO = ? AND AUTORE = ?";

	static final String QUERY_CERCA_LIBRO_ALL = "SELECT * FROM BIBLIOTECA";

	static final String QUERY_AGGIUNGI_LIBRO = "INSERT INTO BIBLIOTECA (IDENTIFICATIVO, TITOLO, AUTORE, DATA_PUBBLICAZIONE) "
			+ "VALUES (IDENTIFICATIVO_SEQUENCE.nextval, ? , ? , ? )";

	public List<Libro> cercaLibro(String autore, String titolo);

	public void aggiungiLibro(Libro libro);

}
