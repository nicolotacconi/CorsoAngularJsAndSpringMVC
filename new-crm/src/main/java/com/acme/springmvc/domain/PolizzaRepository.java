package com.acme.springmvc.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class PolizzaRepository {

	public Polizza dettaglio(Long id) {
		Polizza polizza = new Polizza();
		polizza.setId(id);
		polizza.setDecorrenza(DateTime.now().minusMonths(id.intValue())
				.toDate());
		polizza.setNumero(id + "" + id + "" + id);
		polizza.setProdotto("Prodotto " + id);
		polizza.setElencoAttivita(elencoAttivita());
		polizza.setPratiche(pratiche());
		return polizza;
	}

	private List<Pratica> pratiche() {
		List<Pratica> result = new ArrayList<Pratica>();
		for (int i = 0; i < 6; i++) {
			Pratica pratica = new Pratica();
			pratica.setId(new Long(i));
			pratica.setDescrizione("descrizione");
			pratica.setStato("chiusa");
			pratica.setApertura(DateTime.now().minusDays(i).toDate());
			result.add(pratica);
		}
		return result;
	}

	private List<Attivita> elencoAttivita() {
		List<Attivita> result = new ArrayList<Attivita>();
		for (int i = 0; i < 10; i++) {
			Attivita attivita = new Attivita();
			attivita.setId(new Long(i));
			attivita.setCommenti("blah blah blah");
			attivita.setDescrizione("descrizione");
			attivita.setCreata(DateTime.now().minusWeeks(i).toDate());
			attivita.setStato("chiusa");
			result.add(attivita);
		}
		return result;
	}

	public List<Polizza> search(String numeroPolizza, String targa, int num) {
		List<Polizza> polizze = new ArrayList<Polizza>();
		for (int i = 0; i < num; i++) {
			Polizza polizza = new Polizza();
			polizza.setId(new Long(i));
			polizza.setDecorrenza(DateTime.now().minusMonths(i).toDate());
			polizza.setScadenza(DateTime.now().plusYears(i).toDate());
			polizza.setNumero("1234" + i + "" + i + "" + i);
			polizza.setProposta("0654" + i + "" + i + "" + i);
			polizza.setTipo(i % 3 == 0 ? Tipo.VITA : i % 3 == 1 ? Tipo.AUTO
					: Tipo.RE);
			polizza.setSocieta(i % 3 == 0 ? "341" : "417");
			polizza.setStato(i % 3 == 0 ? "Sospesa" : "Viva");
			polizza.setProdotto(i % 3 == 0 ? "232 ARCA VITA ENERGY 50"
					: i % 3 == 1 ? "787 TUTTO TONDO" : "587 PROTEZIONE 2");
			polizza.setTarga(i % 3 == 1 ? "CK123KL" : null);
			polizza.setBanca(i % 2 == 0 ? "BP Emilia Romagna" : "BP Sondrio");
			polizza.setFiliale(i % 2 == 0 ? "00120 Agenzia 1 Verona"
					: "01254 Agenzia 4 Bolzano");
			polizza.setPremioAnnualizzato(new BigDecimal("123.56"));
			polizza.setElencoAttivita(elencoAttivita());
			polizza.setRuolo(i % 3 == 1 ? "A" : "C");
			polizza.setPratiche(pratiche());
			polizze.add(polizza);
		}
		return polizze;
	}
}
