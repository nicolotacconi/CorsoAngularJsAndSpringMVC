package com.pminformatica.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pminformatica.website.dao.interfacce.IUltimiLavoriDao;
import com.pminformatica.website.dto.UltimiLavori;

@Controller
public class GalleriaController {

	@Autowired
	private IUltimiLavoriDao ultimiLavoriDao;

	@RequestMapping(value = "/getUltimiLavori", method = RequestMethod.POST)
	@ResponseBody
	public List<UltimiLavori> getUltimiLavori() {

		return ultimiLavoriDao.getUltimiLavori();

	}

	public IUltimiLavoriDao getUltimiLavoriDao() {
		return ultimiLavoriDao;
	}

	public void setUltimiLavoriDao(IUltimiLavoriDao ultimiLavoriDao) {
		this.ultimiLavoriDao = ultimiLavoriDao;
	}

}
