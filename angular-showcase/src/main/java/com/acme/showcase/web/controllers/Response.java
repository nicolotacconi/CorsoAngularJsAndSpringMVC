package com.acme.showcase.web.controllers;

public class Response {

	private boolean error;
	private String[] errors;

	private Response(boolean error) {
		this.error = error;
	}

	public boolean isError() {
		return error;
	}

	public void setError(boolean error) {
		this.error = error;
	}

	public String[] getErrors() {
		return errors;
	}

	public void setErrors(String[] errors) {
		this.errors = errors;
	}

	public static Response success() {
		return new Response(false);
	}

	public static Response failure() {
		return new Response(true);
	}

	public static Response failure(String... errors) {
		Response response = new Response(true);
		response.errors = errors;
		return response;
	}

}
