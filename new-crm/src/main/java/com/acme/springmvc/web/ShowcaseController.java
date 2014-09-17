package com.acme.springmvc.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowcaseController {

	@RequestMapping("/showcase/index")
	public String index() {
		return "showcase/index";
	}

	@RequestMapping("/showcase/index2")
	public String index2() {
		return "showcase/index2";
	}

	@RequestMapping("/showcase/template-view")
	public String templateView() {
		return "showcase/templates/view";
	}

	@RequestMapping("/showcase/template-list")
	public String templateList() {
		return "showcase/templates/list";
	}

}
