package com.acme.showcase.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuickstartController {

	@RequestMapping("/quickstart1")
	public String quickstart1() {
		return "quickstart/quickstart1";
	}

	@RequestMapping("/quickstart2")
	public String quickstart2() {
		return "quickstart/quickstart2";
	}

	@RequestMapping("/quickstart3")
	public String quickstart3() {
		return "quickstart/quickstart3";
	}

	@RequestMapping("/quickstart4")
	public String quickstart4() {
		return "quickstart/quickstart4";
	}

	@RequestMapping("/quickstart5")
	public String quickstart5() {
		return "quickstart/quickstart5";
	}
}
