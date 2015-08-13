package com.pminformatica.website.mail;

import java.io.StringWriter;
import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.pminformatica.website.date.DateUtils;
import com.pminformatica.website.dto.Prenotazione;
import com.pminformatica.website.exception.MailSenderException;

public class SendMailService {

	private JavaMailSender javaMailSender;

	private SimpleMailMessage message;

	private String mailTemplate;

	public void sendMail(Prenotazione prenotazione) {
		try {
			String testoEmail = this.creaTestoEmail(prenotazione);

			this.inviaRichiestaPrenotazione(prenotazione, testoEmail);

		} catch (Exception e) {
			throw new MailSenderException(
					"Errore inviando la mail di richiesta prenotazione", e);
		}

	}

	private void inviaRichiestaPrenotazione(Prenotazione prenotazione,
			String testoEmail) throws MessagingException {

		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

		helper.setText(testoEmail, true);
		helper.setFrom(message.getFrom());
		helper.setTo(message.getTo());

		helper.setSubject("PRENOTAZIONE APPUNTAMENTO DA "
				+ prenotazione.getCognome() + " " + prenotazione.getNome());


		javaMailSender.send(mimeMessage);
	}

	private String creaTestoEmail(Prenotazione prenotazione) throws Exception {

		VelocityEngine engine = new VelocityEngine();
		engine.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath");
		engine.setProperty("classpath.resource.loader.class",
				ClasspathResourceLoader.class.getName());

		Template t = engine.getTemplate(mailTemplate);

		VelocityContext context = new VelocityContext();
		context.put("nome", prenotazione.getNome());
		context.put("cognome", prenotazione.getCognome());
		context.put("numeroTelefono", prenotazione.getNumeroTelefono());
		context.put("email", prenotazione.getEmail());
		context.put("data",
				DateUtils.toString(prenotazione.getData(), "dd/MM/yyyy"));
		context.put("ora", DateUtils.toString(prenotazione.getOra(), "HH:mm"));

		StringWriter writer = new StringWriter();
		t.merge(context, writer);

		return writer.toString();
	}

	public void setMessage(SimpleMailMessage message) {
		this.message = message;
	}

	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	public void setMailTemplate(String mailTemplate) {
		this.mailTemplate = mailTemplate;
	}

}
