package com.pminformatica.website.dto;

public class Prenotazione {

	private String nome;

	private String cognome;

	private String numeroTelefono;

	private String email;

	private String data;

	private String ora;

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Registrazione [nome=");
		builder.append(nome);
		builder.append(", cognome=");
		builder.append(cognome);
		builder.append(", numeroTelefono=");
		builder.append(numeroTelefono);
		builder.append(", email=");
		builder.append(email);
		builder.append(", data=");
		builder.append(data);
		builder.append(", ora=");
		builder.append(ora);
		builder.append("]");
		return builder.toString();
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

	public String getNumeroTelefono() {
		return numeroTelefono;
	}

	public void setNumeroTelefono(String numeroTelefono) {
		this.numeroTelefono = numeroTelefono;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getOra() {
		return ora;
	}

	public void setOra(String ora) {
		this.ora = ora;
	}

}
