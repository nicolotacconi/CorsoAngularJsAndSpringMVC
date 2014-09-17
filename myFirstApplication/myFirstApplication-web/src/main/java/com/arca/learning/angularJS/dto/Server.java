package com.arca.learning.angularJS.dto;

public class Server {
	
	private int id; // integer primary key,
	private String nome; // varchar(40),
	private String sistemaOperativo; // varchar(40),
	private String virtuale; // char(1)
	private String produzione; // char(1)
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSistemaOperativo() {
		return sistemaOperativo;
	}
	public void setSistemaOperativo(String sistemaOperativo) {
		this.sistemaOperativo = sistemaOperativo;
	}
	public String getVirtuale() {
		return virtuale;
	}
	public void setVirtuale(String virtuale) {
		this.virtuale = virtuale;
	}
	public String getProduzione() {
		return produzione;
	}
	public void setProduzione(String produzione) {
		this.produzione = produzione;
	}
	
	
}
