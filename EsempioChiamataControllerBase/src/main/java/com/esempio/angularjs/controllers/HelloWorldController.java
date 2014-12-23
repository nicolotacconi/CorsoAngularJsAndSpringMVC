package com.esempio.angularjs.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloWorldController {

	@RequestMapping("/printHelloWorld")
	@ResponseBody
	public String printHelloWorld() {
		return "Hello World";
	}
}
