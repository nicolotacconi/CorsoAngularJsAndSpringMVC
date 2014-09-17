package com.arca.learning.angularJS.dto;

public class Tecnologia {
	private int id; // integer primary key,
	private String nome; // varchar(40)
	
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
}
