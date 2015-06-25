package com.esempio.angularjs.model;

public class Ufficio {

	protected Integer codiceUfficio;

	protected String nome;

	protected Integer piano;

	protected String area;

	protected boolean active = false;

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Integer getCodiceUfficio() {
		return codiceUfficio;
	}

	public void setCodiceUfficio(Integer codiceUfficio) {
		this.codiceUfficio = codiceUfficio;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getPiano() {
		return piano;
	}

	public void setPiano(Integer piano) {
		this.piano = piano;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

}
