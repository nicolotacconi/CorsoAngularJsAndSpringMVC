package it.angularjs.corsobase.controllers;

import it.angularjs.corsobase.domain.Libro;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PrimoControllerBase {

	@RequestMapping(value = "/cercaLibri")
	@ResponseBody
	public List<Libro> cercaLibri(@RequestParam String autore) {

		List<Libro> resultList = cercaLibro(autore);

		return resultList;
	}

	@RequestMapping(value = "/aggiungiLibro", method = RequestMethod.POST)
	@ResponseBody
	public void aggiungiLibro(@RequestBody Libro libro) {

		libri.add(libro);
	}

	static List<Libro> libri = new ArrayList<Libro>() {
		{
			add(new Libro("libro a", "pippo"));
			add(new Libro("libro b", "caio"));
			add(new Libro("libro c", "pippo"));
		}
	};

	private List<Libro> cercaLibro(String autore) {
		List<Libro> resultList = new ArrayList<Libro>();

		for (Libro libro : libri) {
			if (libro.getAutore().contains(autore)) {
				resultList.add(libro);
			}
		}
		return resultList;
	}

}
