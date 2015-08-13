package com.pminformatica.website.dto;

import java.math.BigDecimal;

public class UltimiLavori {

	private BigDecimal id;

	private String title;

	private byte[] image;

	public BigDecimal getId() {
		return id;
	}

	public void setId(BigDecimal id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

}
