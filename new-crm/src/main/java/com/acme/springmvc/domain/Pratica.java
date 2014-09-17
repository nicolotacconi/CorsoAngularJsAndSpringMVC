package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Pratica {

	private Long id;
	private String numero;
	private String ramo;
	private String stato;
	private String area;
	private String subarea;
	private Date apertura;
	private String numeroPolizza;
	private String cliente;
	private String banca;
	private String bancario;
	private String prodotto;
	private String richiesta;
	private String solleciti;
	private String priorita;
	private String ufficio;
	private String assegnata;
	private String creataDa;
	private String descrizione;
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

	public Date getApertura() {
		return apertura;
	}

	public void setApertura(Date apertura) {
		this.apertura = apertura;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getRamo() {
		return ramo;
	}

	public void setRamo(String ramo) {
		this.ramo = ramo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSubarea() {
		return subarea;
	}

	public void setSubarea(String subarea) {
		this.subarea = subarea;
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

	public String getUfficio() {
		return ufficio;
	}

	public void setUfficio(String ufficio) {
		this.ufficio = ufficio;
	}

	public List<Nota> getNote() {
		return note;
	}

	public void addNota(String autore, Date date, String nota) {
		Nota nota2 = new Nota();
		nota2.setAutore(autore);
		nota2.setCreata(date);
		nota2.setNota(nota);
		this.note.add(nota2);
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

	public String getBancario() {
		return bancario;
	}

	public void setBancario(String bancario) {
		this.bancario = bancario;
	}

}
