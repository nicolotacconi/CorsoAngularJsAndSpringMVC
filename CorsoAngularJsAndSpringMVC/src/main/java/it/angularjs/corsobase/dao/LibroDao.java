package it.angularjs.corsobase.dao;

import it.angularjs.corsobase.domain.Libro;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class LibroDao {

	static List<Libro> libri = new ArrayList<Libro>() {
		{
			add(new Libro("libro 1", "pippo"));
			add(new Libro("libro 2", "pluto"));
			add(new Libro("libro 3", "pippo"));
		}
	};
	
	public List<Libro> cercaLibro(String autore) {
		List<Libro> resultList = new ArrayList<Libro>();

		for (Libro libro : libri) {
			if (libro.getAutore().contains(autore)) {
				resultList.add(libro);
			}
		}
		return resultList;
	}
	
	public void aggiungiLibro(Libro libro){
		libri.add(libro);
	}
	
}
