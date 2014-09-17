package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Repository;

@Repository
public class BancarioRepository {

	private List<Bancario> list = new ArrayList<Bancario>();

	public BancarioRepository() {
		list.add(newBancario(1L, "Mario", "Rossi", "CMTDHF78L43L781Z", "001",
				"Banca popolare dell'emilia romagna", "05387", "11200",
				"Agenzia 2 Verona"));
		list.add(newBancario(2L, "Mario", "Verdi", "CMTDHF78L43L781Z", "013",
				"Banca popolare di Sondrio", "05387", "11200",
				"Agenzia 2 Verona"));
		list.add(newBancario(3L, "Luigi", "Rossi", "CMTDHF78L43L781Z", "001",
				"Banca popolare dell'emilia romagna", "05387", "11200",
				"Agenzia 1 Belluno"));
		list.add(newBancario(4L, "Mario", "Bianchi", "CMTDHF78L43L781Z", "001",
				"Banca popolare dell'emilia romagna", "05387", "11200",
				"Agenzia 2 Verona"));
		list.add(newBancario(5L, "Mario", "Rossi", "CMTDHF78L43L781Z", "013",
				"Banca popolare di Sondrio", "05387", "11200",
				"Agenzia 2 Verona"));
		list.add(newBancario(6L, "Paolo", "Rossi", "CMTDHF78L43L781Z", "001",
				"Banca popolare dell'emilia romagna", "05387", "11200",
				"Agenzia 4 Milano"));
	}

	public List<Bancario> search(String nomeCognome) {
		return list;
	}

	private Bancario newBancario(Long id, String nome, String cognome,
			String codiceFiscale, String rete, String banca, String abi,
			String cab, String filiale) {
		Bancario bancario = new Bancario();
		bancario.setId(id);
		bancario.setNome(nome);
		bancario.setCognome(cognome);
		bancario.setCodiceFiscale(codiceFiscale);
		bancario.setRete(rete);
		bancario.setBanca(banca);
		bancario.setAbi(abi);
		bancario.setCab(cab);
		bancario.setFiliale(filiale);
		return bancario;
	}

	public Bancario save(Bancario bancario) {
		bancario.setId(list.size() + 1L);
		bancario.setCreated(DateTime.now().toDate());
		bancario.setUpdated(DateTime.now().toDate());

		list.add(bancario);

		return bancario;
	}
}
