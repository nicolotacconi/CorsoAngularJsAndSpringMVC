package com.pminformatica.website.dao.interfacce;

import com.pminformatica.website.dto.UltimiLavori;

public interface IUltimiLavoriDao {

	static String SELECT_ULTIMI_LAVORI = "SELECT * FROM ULTIMI_LAVORI";

	public java.util.List<UltimiLavori> getUltimiLavori();
}
