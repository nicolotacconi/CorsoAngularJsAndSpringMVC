package com.esempio.angularjs.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.esempio.angularjs.model.HelloWorldModel;

@Controller
public class HelloWorldController {

	@RequestMapping("/printHelloWorld")
	@ResponseBody
	public String printHelloWorld() {
		return "Hello World";
	}

	@RequestMapping("/printHelloWorldModel")
	@ResponseBody
	public HelloWorldModel printHelloWorldModel() {
		HelloWorldModel hw = new HelloWorldModel();
		hw.setMessaggioDiBenvenuto("Messaggio di benvenuto OBJ");
		return hw;
	}

	// questi due metodi servono per provare le promise
	@RequestMapping("/getMessaggioDiBenvenuto")
	@ResponseBody
	public String getMessaggioDiBenvenuto() {
		return "Ciao!!!!!!";
	}

	@RequestMapping("/salutaUtente")
	@ResponseBody
	public String salutaUtente(
			@RequestParam String messaggioDiBenvenuto, @RequestParam String nome) {
		return messaggioDiBenvenuto + " " + nome;
	}
}
