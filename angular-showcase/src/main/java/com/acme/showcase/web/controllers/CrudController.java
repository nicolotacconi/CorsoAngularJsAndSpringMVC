package com.acme.showcase.web.controllers;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CrudController {

	private List<ToDoItem> todos = new ArrayList<ToDoItem>();

	@RequestMapping("/crud")
	public String index() {
		return "crud/index";
	}

	@RequestMapping("/crud/list-page")
	public String listPage() {
		return "crud/list";
	}

	@RequestMapping("/crud/new-page")
	public String newPage() {
		return "crud/new";
	}

	@RequestMapping("/crud/list")
	@ResponseBody
	public List<ToDoItem> list() {
		return todos;
	}

	@RequestMapping("/crud/save")
	@ResponseBody
	public Response save(ToDoItem item) {
		for (ToDoItem todo : todos) {
			if (StringUtils
					.equals(todo.getDescription(), item.getDescription())) {
				return Response.failure("To do già presente");
			}
		}
		todos.add(item);
		return Response.success();
	}

	@RequestMapping("/crud/setreadonly")
	@ResponseBody
	public Response setReadonly(ToDoItem item) {
		for (ToDoItem todo : todos) {
			if (StringUtils
					.equals(todo.getDescription(), item.getDescription())) {
				todo.setReadonly(true);
				return Response.success();
			}
		}
		return Response.failure("Errore generico");
	}

	@RequestMapping("/crud/delete")
	@ResponseBody
	public Response delete(ToDoItem item) {
		for (ToDoItem todo : todos) {
			if (StringUtils
					.equals(todo.getDescription(), item.getDescription())) {
				if (!todo.isReadonly()) {
					todos.remove(todo);
					return Response.success();
				} else {
					return Response.failure("Todo readonly");

				}
			}
		}
		return Response.failure();
	}
}
