package it.corsoangular.esercitazione.dao.interfacce;

import java.util.List;

import it.corsoangular.esercitazione.domain.Libro;

public interface IBibliotecaDao {

	public List<Libro> cercaLibro(String autore, String titolo);

	public void aggiungiLibro(Libro libro);

}
