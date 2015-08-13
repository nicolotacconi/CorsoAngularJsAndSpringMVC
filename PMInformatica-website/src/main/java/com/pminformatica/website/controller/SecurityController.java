package com.pminformatica.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pminformatica.website.dao.interfacce.ISecurityDao;
import com.pminformatica.website.dto.Security;

@Controller
public class SecurityController {

	@Autowired
	private ISecurityDao securityDao;

	@RequestMapping(value = "/checkUserPass", method = RequestMethod.POST)
	@ResponseBody
	public boolean chekUserPass(@RequestBody Security utente) {

		try {
			securityDao.checkUsernameEPassword(utente.getUsername(), utente.getPassword());
			return true;
		} catch (IncorrectResultSizeDataAccessException e) {
			return false;
		}

	}

	public ISecurityDao getSecurityDao() {
		return securityDao;
	}

	public void setSecurityDao(ISecurityDao securityDao) {
		this.securityDao = securityDao;
	}

}
