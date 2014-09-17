package com.acme.springmvc.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acme.springmvc.domain.Fax;
import com.acme.springmvc.domain.FaxRepository;
import com.google.gson.Gson;

@Controller
public class FaxController {

	@Autowired
	private FaxRepository faxRepository;

	@RequestMapping(value = "/fax/my")
	@ResponseBody
	public String listasjson() {
		return new Gson().toJson(faxRepository.list());
	}

	@RequestMapping(value = "/fax/my-recenti")
	@ResponseBody
	public String myRecenti() {
		List<Fax> list = faxRepository.list();
		return new Gson().toJson(list);
	}

}
