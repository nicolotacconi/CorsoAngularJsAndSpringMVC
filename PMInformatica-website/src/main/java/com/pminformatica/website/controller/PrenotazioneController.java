package com.pminformatica.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pminformatica.website.dto.Prenotazione;

@Controller
public class PrenotazioneController {

	@RequestMapping(value = "/prenotaAppuntamento", method = RequestMethod.POST)
	@ResponseBody
	public void prenotaAppuntamento(@RequestBody Prenotazione prenotazione) {
		System.out.println("prenotazione: " + prenotazione.toString());
	}
}
