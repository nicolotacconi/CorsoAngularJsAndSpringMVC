package com.esempio.angularjs.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.esempio.angularjs.model.HelloWorldModel;
import com.esempio.angularjs.model.Ufficio;

@Controller
public class CostruttiBaseController {

	@RequestMapping("/getUffici")
	@ResponseBody
	public List<Ufficio> getUffici() {
		
		List<Ufficio> uffici = new ArrayList<Ufficio>();
		
		Ufficio ptfAuto = new Ufficio();
		ptfAuto.setNome("PORTAFOGLIO AUTO");
		ptfAuto.setPiano(1);
		ptfAuto.setArea("DANNI");
		
		Ufficio ptfVita = new Ufficio();
		ptfVita.setNome("PORTAFOGLIO VITA");
		ptfVita.setPiano(2);
		ptfVita.setArea("VITA");
		
		Ufficio organizzazione = new Ufficio();
		organizzazione.setNome("ORGANIZZAZIONE");
		organizzazione.setPiano(3);
		organizzazione.setArea("VITA E DANNI");
		
		uffici.add(ptfAuto);
		uffici.add(ptfVita);
		uffici.add(organizzazione);
		
		return uffici;
	}

	
}
