package it.angularjs.corsobase.controllers;

import it.angularjs.corsobase.dao.LibroDao;
import it.angularjs.corsobase.domain.Libro;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PrimoControllerBase {

	@Autowired
	private LibroDao libroDao;
		
	@RequestMapping(value = "/cercaLibri")
	@ResponseBody
	public List<Libro> cercaLibri(@RequestParam String autore) {

		List<Libro> resultList = libroDao.cercaLibro(autore);

		return resultList;
	}

	@RequestMapping(value = "/aggiungiLibro", method = RequestMethod.POST)
	public void aggiungiLibro(@RequestBody Libro libro) {

		libroDao.aggiungiLibro(libro);
	}

	public LibroDao getLibroDao() {
		return libroDao;
	}

	public void setLibroDao(LibroDao libroDao) {
		this.libroDao = libroDao;
	}

}
