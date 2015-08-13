package com.pminformatica.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pminformatica.website.dao.interfacce.IOfferteDao;
import com.pminformatica.website.dto.Offerte;

@Controller
public class OfferteController {

	@Autowired
	private IOfferteDao offerteDao;

	@RequestMapping(value = "/getOfferte", method = RequestMethod.POST)
	@ResponseBody
	public List<Offerte> getOfferte() {

		return offerteDao.getOfferte();

	}

	public IOfferteDao getOfferteDao() {
		return offerteDao;
	}

	public void setOfferteDao(IOfferteDao offerteDao) {
		this.offerteDao = offerteDao;
	}

}
