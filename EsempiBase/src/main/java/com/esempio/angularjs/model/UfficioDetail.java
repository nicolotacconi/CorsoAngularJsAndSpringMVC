package com.esempio.angularjs.model;

public class UfficioDetail extends Ufficio {

	private String responsabile;

	private String siglaUfficio;

	private Integer numeroCollaboratori;

	public UfficioDetail(Ufficio uff) {
		this.codiceUfficio = uff.getCodiceUfficio();
		this.nome = uff.getNome();
		this.area = uff.getArea();
		this.piano = uff.getPiano();
		this.active = uff.isActive();
	}

	public String getResponsabile() {
		return responsabile;
	}

	public void setResponsabile(String responsabile) {
		this.responsabile = responsabile;
	}

	public String getSiglaUfficio() {
		return siglaUfficio;
	}

	public void setSiglaUfficio(String siglaUfficio) {
		this.siglaUfficio = siglaUfficio;
	}

	public Integer getNumeroCollaboratori() {
		return numeroCollaboratori;
	}

	public void setNumeroCollaboratori(Integer numeroCollaboratori) {
		this.numeroCollaboratori = numeroCollaboratori;
	}

}
