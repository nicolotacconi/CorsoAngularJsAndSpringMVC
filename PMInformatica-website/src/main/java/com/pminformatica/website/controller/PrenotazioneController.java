package com.pminformatica.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pminformatica.website.dto.Prenotazione;
import com.pminformatica.website.mail.SendMailService;

@Controller
public class PrenotazioneController {

	@Autowired
	private SendMailService sendMailService;

	@RequestMapping(value = "/prenotaAppuntamento", method = RequestMethod.POST)
	@ResponseBody
	public void prenotaAppuntamento(@RequestBody Prenotazione prenotazione) {
		System.out.println("INVIANDO EMAIL");
		sendMailService.sendMail(prenotazione);

	}

	public void setSendMailService(SendMailService sendMailService) {
		this.sendMailService = sendMailService;
	}

}
