package com.acme.springmvc.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Polizza {
	private Long id;
	private String numero;
	private String proposta;
	private String societa;
	private Tipo tipo;
	private String stato;
	private String prodotto;
	private Date decorrenza;
	private Date scadenza;
	private String targa;
	private String banca;
	private String filiale;
	private BigDecimal premioAnnualizzato;
	private String ruolo;
	private String ndg;
	private List<Attivita> elencoAttivita;
	private List<Pratica> pratiche;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getProposta() {
		return proposta;
	}

	public void setProposta(String proposta) {
		this.proposta = proposta;
	}

	public String getSocieta() {
		return societa;
	}

	public void setSocieta(String societa) {
		this.societa = societa;
	}

	public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getProdotto() {
		return prodotto;
	}

	public void setProdotto(String prodotto) {
		this.prodotto = prodotto;
	}

	public Date getDecorrenza() {
		return decorrenza;
	}

	public void setDecorrenza(Date decorrenza) {
		this.decorrenza = decorrenza;
	}

	public Date getScadenza() {
		return scadenza;
	}

	public void setScadenza(Date scadenza) {
		this.scadenza = scadenza;
	}

	public List<Attivita> getElencoAttivita() {
		return elencoAttivita;
	}

	public void setElencoAttivita(List<Attivita> elencoAttivita) {
		this.elencoAttivita = elencoAttivita;
	}

	public List<Pratica> getPratiche() {
		return pratiche;
	}

	public void setPratiche(List<Pratica> pratiche) {
		this.pratiche = pratiche;
	}

	public String getTarga() {
		return targa;
	}

	public void setTarga(String targa) {
		this.targa = targa;
	}

	public String getBanca() {
		return banca;
	}

	public void setBanca(String banca) {
		this.banca = banca;
	}

	public String getFiliale() {
		return filiale;
	}

	public void setFiliale(String filiale) {
		this.filiale = filiale;
	}

	public BigDecimal getPremioAnnualizzato() {
		return premioAnnualizzato;
	}

	public void setPremioAnnualizzato(BigDecimal premioAnnualizzato) {
		this.premioAnnualizzato = premioAnnualizzato;
	}

	public String getRuolo() {
		return ruolo;
	}

	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
	}

	public String getNdg() {
		return ndg;
	}

	public void setNdg(String ndg) {
		this.ndg = ndg;
	}

}
