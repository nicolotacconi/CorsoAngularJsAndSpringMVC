package com.esempio.angularjs.dao;

import org.springframework.stereotype.Repository;

import com.esempio.angularjs.model.Ufficio;
import com.esempio.angularjs.model.UfficioDetail;

@Repository
public class UfficiDao {

	public UfficioDetail getDettaglioUfficio(Ufficio ufficio) {
		// QUESTO E' UN DAO MOCK CHE NON ACCEDE AL DB

		UfficioDetail dettaglioUfficio = new UfficioDetail(ufficio);

		switch (ufficio.getCodiceUfficio()) {
		case 1:
			dettaglioUfficio.setSiglaUfficio("PTFA");
			dettaglioUfficio.setNumeroCollaboratori(10);
			dettaglioUfficio.setResponsabile("FABIO");
			break;

		case 2:
			dettaglioUfficio.setSiglaUfficio("PTFV");
			dettaglioUfficio.setNumeroCollaboratori(20);
			dettaglioUfficio.setResponsabile("PIPPO");
			break;

		case 3:
			dettaglioUfficio.setSiglaUfficio("ORG");
			dettaglioUfficio.setNumeroCollaboratori(6);
			dettaglioUfficio.setResponsabile("PLUTO");
			break;
		}
		
		return dettaglioUfficio;
	}
}
