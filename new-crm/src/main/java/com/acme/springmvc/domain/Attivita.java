package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Attivita {

	private Long id;
	private Long numero;
	private String descrizione;
	private String commenti;
	private Date creata;
	private String stato;
	private String tipo;
	private String argomento;
	private Date apertura;
	private String numeroPolizza;
	private String cliente;
	private String praticaCollegata;
	private String banca;
	private String bancario;
	private String prodotto;
	private String richiesta;
	private String risposta;
	private String solleciti;
	private String priorita;
	private String assegnata;
	private String creataDa;
	private List<Nota> note = new ArrayList<Nota>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getCommenti() {
		return commenti;
	}

	public void setCommenti(String commenti) {
		this.commenti = commenti;
	}

	public Date getCreata() {
		return creata;
	}

	public void setCreata(Date creata) {
		this.creata = creata;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public Long getNumero() {
		return numero;
	}

	public void setNumero(Long numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getArgomento() {
		return argomento;
	}

	public void setArgomento(String argomento) {
		this.argomento = argomento;
	}

	public Date getApertura() {
		return apertura;
	}

	public void setApertura(Date apertura) {
		this.apertura = apertura;
	}

	public String getNumeroPolizza() {
		return numeroPolizza;
	}

	public void setNumeroPolizza(String numeroPolizza) {
		this.numeroPolizza = numeroPolizza;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public String getPraticaCollegata() {
		return praticaCollegata;
	}

	public void setPraticaCollegata(String praticaCollegata) {
		this.praticaCollegata = praticaCollegata;
	}

	public String getBanca() {
		return banca;
	}

	public void setBanca(String banca) {
		this.banca = banca;
	}

	public String getProdotto() {
		return prodotto;
	}

	public void setProdotto(String prodotto) {
		this.prodotto = prodotto;
	}

	public String getRichiesta() {
		return richiesta;
	}

	public void setRichiesta(String richiesta) {
		this.richiesta = richiesta;
	}

	public String getRisposta() {
		return risposta;
	}

	public void setRisposta(String risposta) {
		this.risposta = risposta;
	}

	public String getSolleciti() {
		return solleciti;
	}

	public void setSolleciti(String solleciti) {
		this.solleciti = solleciti;
	}

	public String getPriorita() {
		return priorita;
	}

	public void setPriorita(String priorita) {
		this.priorita = priorita;
	}

	public String getAssegnata() {
		return assegnata;
	}

	public void setAssegnata(String assegnata) {
		this.assegnata = assegnata;
	}

	public String getCreataDa() {
		return creataDa;
	}

	public void setCreataDa(String creataDa) {
		this.creataDa = creataDa;
	}

	public List<Nota> getNote() {
		return note;
	}

	public String getBancario() {
		return bancario;
	}

	public void setBancario(String bancario) {
		this.bancario = bancario;
	}

	public void addNota(String autore, Date date, String nota) {
		Nota nota2 = new Nota();
		nota2.setAutore(autore);
		nota2.setCreata(date);
		nota2.setNota(nota);
		this.note.add(nota2);
	}

}
