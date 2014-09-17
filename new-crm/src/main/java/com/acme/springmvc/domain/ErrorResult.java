package com.acme.springmvc.domain;

import java.util.List;

public class ErrorResult {

	private boolean error = true;
	private List<ErrorMessage> errors;

	public ErrorResult(List<ErrorMessage> fieldErrors) {
		this.errors = fieldErrors;
	}

	public boolean isError() {
		return error;
	}

	public void setError(boolean error) {
		this.error = error;
	}

	public List<ErrorMessage> getErrors() {
		return errors;
	}

	public void setErrors(List<ErrorMessage> fieldErrors) {
		this.errors = fieldErrors;
	}

}
