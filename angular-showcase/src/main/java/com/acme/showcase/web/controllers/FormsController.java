package com.acme.showcase.web.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.Predicate;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FormsController {

	@RequestMapping("/forms/questionario1")
	public String questionario1() {
		return "forms/questionario1";
	}

	@RequestMapping("/forms/formcombo1")
	public String formcombo1() {
		return "forms/formcombo1";
	}

	@RequestMapping("/forms/beneficiari1")
	public String beneficiari1() {
		return "forms/beneficiari1";
	}

	@RequestMapping("/forms/beneficiari2")
	public String beneficiari2() {
		return "forms/beneficiari2";
	}

	@RequestMapping("/forms/collapsible1")
	public String collapsible1() {
		return "forms/collapsible1";
	}

	@RequestMapping("/forms/required1")
	public String required1() {
		return "forms/required1";
	}

	@RequestMapping("/forms/table1")
	public String table1() {
		return "forms/table1";
	}

	@RequestMapping("/forms/table2")
	public String table2() {
		return "forms/table2";
	}

	@RequestMapping("/forms/autocomplete1")
	public String autocomplete1() {
		return "forms/autocomplete1";
	}

	@RequestMapping("/forms/combo1")
	@ResponseBody
	public List<String> combo1() {
		return Arrays.asList("abc", "def", "ghi", "jkl");
	}

	@RequestMapping("/forms/combo2")
	@ResponseBody
	public List<String> combo2(String value1) {
		List<String> values = new ArrayList<String>();
		for (int i = 0; i < 5; i++) {
			values.add(value1 + i + i + i);
		}
		return values;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/forms/search")
	@ResponseBody
	public List<String> search(final String search) {
		return new ArrayList<String>(CollectionUtils.select(Arrays.asList(
				"abc", "bcd", "cde", "def", "efg", "fgh", "ghi", "hij", "ijk",
				"jkl"), new Predicate() {
			public boolean evaluate(Object object) {
				return StringUtils.contains((String) object, search);
			}
		}));
	}
}
