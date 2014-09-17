package com.arca.learning.angularJS.dao;

import java.util.List;

import com.arca.learning.angularJS.dto.Applicazione;

public interface ApplicazioneDao {

	/**
	 * Recupera un'applicazione dato l'ID
	 * @param id ID dell'applicazione
	 * @return
	 */
	public Applicazione getApplicazione(int id);
		
	/**
	 * Recupera tutte le Applicazioni
	 * @return
	 */
	public List<Applicazione> getApplicazioni();
	
	/**
	 * Recupera tutte le applicazioni di un server
	 * @param serverId ID del server
	 * @return
	 */
	public List<Applicazione> getApplicazionei(int serverId);
	
	/**
	 * Inserisce una nuova applicazione nel DB
	 * @param applicazione
	 */
	public void insertApplicazione(Applicazione applicazione);
	
	/**
	 * Aggiorna l'applicazione sulla base dati
	 * @param applicazione
	 */
	public void updateApplicazione(Applicazione applicazione);
}
