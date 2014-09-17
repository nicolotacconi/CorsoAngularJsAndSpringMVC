package com.arca.learning.angularJS.dao;

import java.util.List;

import com.arca.learning.angularJS.dto.Server;

public interface ServerDao {

	/**
	 * Recupera il server dato l'ID
	 * @param id
	 * @return
	 */
	public Server getServer(int id);
	
	/**
	 * Inserisce un nuovo server nel DB
	 * @param server
	 */
	public void inserServer(Server server);
	
	/**
	 * Aggiorna il server sulla base dati
	 * @param server
	 */
	public void updateServer(Server server);
	
	/**
	 * Cancella il server dalla base dati
	 * @param id ID del server da cancellare
	 */
	public void deleteServer(int id);
	
	/**
	 * Recupera tutti i server dato l'id di un'applicazione
	 * @param applId
	 * @return
	 */
	public List<Server> getServers(int applId);
}
