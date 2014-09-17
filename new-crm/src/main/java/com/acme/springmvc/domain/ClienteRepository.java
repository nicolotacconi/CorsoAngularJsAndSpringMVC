package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.joda.DateTimeFormatterFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ClienteRepository {

	private List<Cliente> list;

	@Autowired
	private PolizzaRepository polizzaRepository;

	public List<Cliente> search(String nomeCognome) {
		list = new ArrayList<Cliente>();
		list.add(newCliente(1L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"22/09/1980", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(2L, "Mario", "Verdi", "MRSMSS88M33L483H",
				"03/10/1970", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(3L, "Luigi", "Rossi", "LGUMSS88M33L483H",
				"15/11/1968", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(4L, "Mario", "Bianchi", "MROMSS88M33L483H",
				"21/02/1982", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(5L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"07/06/1983", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(6L, "Luigi", "Rossi", "LGUMSS88M33L483H",
				"15/11/1968", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(7L, "Mario", "Bianchi", "MROMSS88M33L483H",
				"21/02/1982", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(8L, "Mario", "Rossi", "MRSMSS88M33L483H",
				"07/06/1983", "via XX settembre, 11", "Verona", "VR"));
		list.add(newCliente(9L, "Paolo", "Rossi", "PLOMSS88M33L483H",
				"28/05/1960", "via XX settembre, 11", "Verona", "VR"));
		return list;
	}

	private Cliente newCliente(Long id, String nome, String cognome,
			String codiceFiscale, String dataNascita, String indirizzo,
			String comune, String provincia) {
		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setNome(nome);
		cliente.setCognome(cognome);
		cliente.setCodiceFiscale(codiceFiscale);
		cliente.setDataNascita(DateTime.parse(
				dataNascita,
				new DateTimeFormatterFactory("dd/MM/yyyy")
						.createDateTimeFormatter()).toDate());
		cliente.setPolizze(newPolizze());
		Recapito recapito = new Recapito();
		recapito.setIndirizzo(indirizzo);
		recapito.setComune(comune);
		recapito.setProvincia(provincia);
		cliente.setResidenza(recapito);
		cliente.setDomicilio(recapito);
		return cliente;
	}

	private List<Polizza> newPolizze() {
		return polizzaRepository.search(null, null, 5);
	}

	public Cliente dettaglio(Long id) {
		for (Cliente cliente : list) {
			if (cliente.getId().equals(id))
				return cliente;
		}
		return null;
	}
}
