package it.corsoangular.esercitazione.domain;

import java.math.BigDecimal;

public class Libro {

	private BigDecimal identificativo;

	private String titolo;

	private String autore;

	private String dataPubblicazione;

	public BigDecimal getIdentificativo() {
		return identificativo;
	}

	public void setIdentificativo(BigDecimal identificativo) {
		this.identificativo = identificativo;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getAutore() {
		return autore;
	}

	public void setAutore(String autore) {
		this.autore = autore;
	}

	public String getDataPubblicazione() {
		return dataPubblicazione;
	}

	public void setDataPubblicazione(String dataPubblicazione) {
		this.dataPubblicazione = dataPubblicazione;
	}

}
