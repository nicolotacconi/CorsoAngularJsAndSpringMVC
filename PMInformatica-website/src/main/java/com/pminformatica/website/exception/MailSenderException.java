package com.pminformatica.website.exception;

public class MailSenderException extends RuntimeException {

	public MailSenderException(String testoErrore, Exception eccezione) {
		super(testoErrore, eccezione);
	}

}
