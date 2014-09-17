package com.arca.learning.angularJS.dao;

public interface ApplicazioneServerDao {
	
	/**
	 * inserisce una nuova relazione Applicazione - Server
	 * @param idAppl ID dell'applocazione da inserire
	 * @param idServer ID del server da inserire
	 */
	public void insertApplicazioneServer(int idAppl, int idServer);
	
	/**
	 * Cancella una nuova relazione Applicazione - Server
	 * @param idAppl ID dell'applocazione da cancellare
	 * @param idServer ID del server da cancellare
	 */
	public void deleteApplicazioneServer(int idAppl, int idServer);

}
