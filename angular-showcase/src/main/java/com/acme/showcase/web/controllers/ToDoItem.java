package com.acme.showcase.web.controllers;

public class ToDoItem {

	private String description;
	private boolean readonly;

	public ToDoItem() {
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public boolean isReadonly() {
		return readonly;
	}

	public void setReadonly(boolean readonly) {
		this.readonly = readonly;
	}

}
