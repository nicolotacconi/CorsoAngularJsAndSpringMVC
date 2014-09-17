package com.acme.springmvc.domain;

import java.util.Date;
import java.util.List;

public class Cliente {

	private Long id;
	private String nome;
	private String cognome;
	private String codiceFiscale;
	private Date dataNascita;
	private Recapito residenza;
	private Recapito domicilio;
	private List<Polizza> polizze;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getCodiceFiscale() {
		return codiceFiscale;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}

	public Date getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}

	public List<Polizza> getPolizze() {
		return polizze;
	}

	public void setPolizze(List<Polizza> polizze) {
		this.polizze = polizze;
	}

	public Recapito getResidenza() {
		return residenza;
	}

	public void setResidenza(Recapito residenza) {
		this.residenza = residenza;
	}

	public Recapito getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(Recapito domicilio) {
		this.domicilio = domicilio;
	}

}
