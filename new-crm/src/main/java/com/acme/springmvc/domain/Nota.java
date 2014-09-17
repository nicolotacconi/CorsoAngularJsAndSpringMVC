package com.acme.springmvc.domain;

import java.util.Date;

public class Nota {

	private String autore;
	private Date creata;
	private String nota;

	public String getAutore() {
		return autore;
	}

	public void setAutore(String autore) {
		this.autore = autore;
	}

	public Date getCreata() {
		return creata;
	}

	public void setCreata(Date creata) {
		this.creata = creata;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

}
