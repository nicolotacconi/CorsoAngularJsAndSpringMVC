package com.acme.springmvc.web;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acme.springmvc.domain.Attivita;
import com.acme.springmvc.domain.AttivitaRepository;
import com.acme.springmvc.domain.Bancario;
import com.acme.springmvc.domain.BancarioRepository;
import com.acme.springmvc.domain.Cliente;
import com.acme.springmvc.domain.ClienteRepository;
import com.acme.springmvc.domain.ErrorMessage;
import com.acme.springmvc.domain.ErrorResult;
import com.acme.springmvc.domain.Polizza;
import com.acme.springmvc.domain.PolizzaRepository;
import com.google.gson.Gson;

@Controller
public class AttivitaController {

	@Autowired
	private AttivitaRepository attivitaRepository;

	@Autowired
	private BancarioRepository bancarioRepository;

	@Autowired
	private ClienteRepository clienteRepository;

	@Autowired
	private PolizzaRepository polizzaRepository;

	@Autowired
	private MessageSource messageSource;

	@RequestMapping("/attivita/mylist")
	public ModelAndView list() {
		List<Attivita> listAttivita = attivitaRepository.list();

		ModelAndView modelAndView = new ModelAndView("attivita/attivitaList");
		modelAndView.addObject("listAttivita", listAttivita);
		return modelAndView;
	}

	@RequestMapping(value = "/attivita/mylistasjson")
	@ResponseBody
	public String listasjson() {
		return new Gson().toJson(attivitaRepository.list());
	}

	@RequestMapping(value = "/attivita/mylistasjson2")
	@ResponseBody
	public List<Attivita> listasjson2() {
		return attivitaRepository.list();
	}

	@RequestMapping(value = "/attivita/my-recenti")
	@ResponseBody
	public String myRecenti() {
		List<Attivita> list = attivitaRepository.list();
		for (Attivita attivita : list) {
			attivita.setStato("chiusa");
		}
		return new Gson().toJson(list);
	}

	@RequestMapping(value = "/attivita/new", method = RequestMethod.GET)
	public ModelAndView newAttivita() {
		ModelAndView modelAndView = new ModelAndView("attivita/attivitaNew");
		return modelAndView;
	}

	@RequestMapping(value = "/attivita/searchBancario")
	@ResponseBody
	public String searchBancario(String nomeCognome) {
		sleep(3);
		return new Gson().toJson(bancarioRepository.search(nomeCognome));
	}

	@RequestMapping(value = "/attivita/searchPolizza")
	@ResponseBody
	public List<Polizza> searchPolizza(String numeroPolizza, String targa) {
		return polizzaRepository.search(numeroPolizza, targa, 10);
	}

	@RequestMapping(value = "/attivita/bancario-list")
	public String bancarioList() {
		return "fragments/bancarioList";
	}

	@RequestMapping(value = "/attivita/polizza-list")
	public String polizzaList() {
		return "fragments/polizzaList";
	}

	@RequestMapping(value = "/attivita/searchCliente")
	@ResponseBody
	public List<Cliente> searchCliente(String nomeCognome) {
		sleep(4);
		return clienteRepository.search(nomeCognome);
	}

	@RequestMapping(value = "/attivita/cliente-list")
	public String clienteList() {
		return "fragments/clienteList";
	}

	@RequestMapping(value = "/attivita/bancario-new")
	public String bancarioNew() {
		return "fragments/bancarioNew";
	}

	@RequestMapping(value = "/attivita/polizza-view")
	public String polizzaView() {
		return "fragments/polizzaView";
	}

	@RequestMapping(value = "/attivita/attivita-view")
	public String attivitaView() {
		return "fragments/attivitaView";
	}

	@RequestMapping(value = "/attivita/cliente/{id}")
	@ResponseBody
	public String dettaglioCliente(@PathVariable Long id) {
		return new Gson().toJson(clienteRepository.dettaglio(id));
	}

	@RequestMapping(value = "/attivita/polizza/{id}")
	@ResponseBody
	public String dettaglioPolizza(@PathVariable Long id) {
		return new Gson().toJson(polizzaRepository.dettaglio(id));
	}

	@RequestMapping(value = "/attivita/bancario/new")
	@ResponseBody
	public String saveBancario(@Valid Bancario bancario,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return errors(bindingResult);
		}
		bancarioRepository.save(bancario);
		return toJson(bancario);
	}

	private String errors(BindingResult bindingResult) {
		List<ErrorMessage> list = new ArrayList<ErrorMessage>();
		for (FieldError fieldError : bindingResult.getFieldErrors()) {
			list.add(new ErrorMessage(fieldError.getField(), messageSource
					.getMessage(fieldError, null)));
		}
		return toJson(new ErrorResult(list));
	}

	private String toJson(Object o) {
		return new Gson().toJson(o);
	}

	private void sleep(int seconds) {
		// try {
		// Thread.sleep(seconds * 1000);
		// } catch (InterruptedException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
	}
}
