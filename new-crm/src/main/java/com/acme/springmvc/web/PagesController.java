package com.acme.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.common.base.CaseFormat;

@Controller
public class PagesController {

	@RequestMapping(value = "/pages/{page}")
	public String page(@PathVariable String page) {
		// for (int i = 0; i < 5; i++) {
		// try {
		// System.out.println("sleeping...");
		// Thread.sleep(1000);
		// } catch (InterruptedException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// }
		// System.out.println("awake!");
		return "pages/"
				+ CaseFormat.LOWER_HYPHEN.to(CaseFormat.LOWER_CAMEL, page);
	}
}
