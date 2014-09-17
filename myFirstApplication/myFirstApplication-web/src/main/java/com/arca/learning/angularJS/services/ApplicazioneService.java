package com.arca.learning.angularJS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arca.learning.angularJS.dao.ApplicazioneDao;
import com.arca.learning.angularJS.dto.Applicazione;

@Service
public class ApplicazioneService {

	@Autowired private ApplicazioneDao dao;
	
	public List<Applicazione> getAllApplicazioni(){
		return dao.getApplicazioni();
	}
}
