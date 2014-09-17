package com.arca.learning.angularJS.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.arca.learning.angularJS.dto.Applicazione;
import com.arca.learning.angularJS.services.ApplicazioneService;

@Controller
public class ApplicazioneController {
	
	@Autowired private ApplicazioneService service;
	
	@RequestMapping(value = "/applicazione/list")
	@ResponseBody
	public List<Applicazione> refresh(){
		return service.getAllApplicazioni();
	}
	
	
}
