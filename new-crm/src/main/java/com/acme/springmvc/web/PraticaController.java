package com.acme.springmvc.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acme.springmvc.domain.Pratica;
import com.acme.springmvc.domain.PraticaRepository;

@Controller
public class PraticaController {

	@Autowired
	private PraticaRepository praticaRepository;

	@RequestMapping("/pratica/list")
	@ResponseBody
	public List<Pratica> list() {
		return praticaRepository.list();
	}

}
