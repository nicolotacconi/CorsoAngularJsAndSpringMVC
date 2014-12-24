package com.esempio.angularjs.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.esempio.angularjs.model.PrimoForm;

@Controller
public class PrimoFormController {

	@RequestMapping("/registraUtente")
	@ResponseBody
	public String registraUtente(@RequestBody PrimoForm utente) {
		String messaggioConferma = "Utente " + utente.getNome() + " "
				+ utente.getCognome() + " registrato correttamente";
		
		return messaggioConferma;
	}
}
