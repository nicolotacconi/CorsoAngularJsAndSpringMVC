package com.pminformatica.website.dao.interfacce;

import com.pminformatica.website.dto.Offerte;

public interface IOfferteDao {

	static String SELECT_OFFERTE = "SELECT * FROM OFFERTE";

	public java.util.List<Offerte> getOfferte();
}
