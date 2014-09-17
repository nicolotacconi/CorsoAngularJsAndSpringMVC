package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class PraticaRepository {

	public List<Pratica> list() {
		List<Pratica> result = new ArrayList<Pratica>();
		for (int i = 0; i < 10; i++) {
			Pratica pratica = new Pratica();
			pratica.setId(new Long(i));
			pratica.setDescrizione("descrizione " + i);
			pratica.setRamo(i % 2 == 0 ? "Danni" : "Vita");
			pratica.setArea("Variazione Contr");
			pratica.setSubarea(i % 2 == 0 ? "Cambio veicolo"
					: "Cambio indirizzo");
			pratica.setStato("in corso");
			pratica.setNumero("" + 1001258L + i);
			pratica.setDescrizione("descrizione " + i);
			pratica.setApertura(new DateTime().minusDays(i).toDate());
			pratica.setStato("in corso");
			pratica.setNumeroPolizza("" + 16353L + i);
			pratica.setCliente(i % 2 == 0 ? "Mario Rossi" : "Luigi Verdi");
			pratica.setBancario(i % 2 == 0 ? "Mario Rossi" : "Gianni Verdi");
			pratica.setBanca(i % 2 == 0 ? "001" : "013");
			pratica.setProdotto("146 - Private Selecta");
			pratica.setRichiesta("Il cliente richiede...");
			pratica.setSolleciti(i % 2 == 0 ? "!!" : "");
			pratica.setUfficio(i % 2 == 0 ? "Ptf1" : "Backoffice");
			pratica.setPriorita("Media");
			pratica.setAssegnata("Filippo Bianchi");
			pratica.setCreataDa("Gustavo Gialli");

			pratica.addNota("Mario Bianchi", new DateTime().minusDays(i)
					.toDate(),
					"un commento molto molto molto molto molto molto lungo");
			pratica.addNota("Luigi Verdi",
					new DateTime().minusDays(i).toDate(), "prova prova");

			result.add(pratica);
		}
		return result;
	}

}
