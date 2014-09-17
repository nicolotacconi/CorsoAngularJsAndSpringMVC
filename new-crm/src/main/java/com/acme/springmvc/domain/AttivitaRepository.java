package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class AttivitaRepository {

	public List<Attivita> list() {
		List<Attivita> result = new ArrayList<Attivita>();
		for (int i = 0; i < 10; i++) {
			Attivita attivita = new Attivita();
			attivita.setId(new Long(i));
			attivita.setNumero(1001258L + i);
			attivita.setTipo(i % 2 == 0 ? "Cliente" : "Interna");
			attivita.setArgomento(i % 2 == 0 ? "Informazioni fondi"
					: "Richiesta info a ptf");
			attivita.setDescrizione("descrizione " + i);
			attivita.setCreata(new Date());
			attivita.setApertura(new DateTime().minusDays(i).toDate());
			attivita.setStato("in corso");
			attivita.setNumeroPolizza("" + 16353L + i);
			attivita.setCliente(i % 2 == 0 ? "Mario Rossi" : "Luigi Verdi");
			attivita.setPraticaCollegata(i % 2 == 0 ? "-" : "123321");
			attivita.setBancario(i % 2 == 0 ? "Mario Rossi" : "Gianni Verdi");
			attivita.setBanca(i % 2 == 0 ? "001" : "013");
			attivita.setProdotto("146 - Private Selecta");
			attivita.setRichiesta("Il cliente richiede...");
			attivita.setRisposta("blah blah blah");
			attivita.setSolleciti(i % 2 == 0 ? "!!" : "");
			attivita.setPriorita("Media");
			attivita.setAssegnata("Filippo Bianchi");
			attivita.setCreataDa("Gustavo Gialli");

			attivita.addNota("Mario Bianchi", new DateTime().minusDays(i)
					.toDate(),
					"un commento molto molto molto molto molto molto lungo");
			attivita.addNota("Luigi Verdi", new DateTime().minusDays(i)
					.toDate(), "prova prova");
			result.add(attivita);
		}
		return result;
	}

}
