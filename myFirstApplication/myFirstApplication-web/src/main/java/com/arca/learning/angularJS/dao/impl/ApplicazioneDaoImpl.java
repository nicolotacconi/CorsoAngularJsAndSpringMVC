package com.arca.learning.angularJS.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import com.arca.learning.angularJS.dao.ApplicazioneDao;
import com.arca.learning.angularJS.dao.BaseDao;
import com.arca.learning.angularJS.dto.Applicazione;

@Repository
public class ApplicazioneDaoImpl extends BaseDao implements ApplicazioneDao{

	private final static String SQL = "SELECT * FROM Applicazione";
	
	private final static String SQL_BY_ID = "SELECT * FROM Applicazione WHERE id = ?";
	
	private final static String SQL_BY_SERVER = "SELECT DISTINCT A.* FROM Applicazione A "
			+ " INNER JOIN APPLICAZIONE_SERVER S ON S.app_id = A.ID"
			+ " WHERE S.server_id = ?";
	
	private final static String INSERT = "INSERT INTO Applicazione (id, nome, tecnologia web)"
			+ "	VALUES (SS_APPLICAZIONE.nextval, ?, ?, ?)";

	private final static String UPDATE = "UPDATE Applicazione "
			+ " SET nome = ?"
			+ "	tecnologia = ?"
			+ " web = ?"
			+ "	WHERE id = ?";
	
	public Applicazione getApplicazione(int id) {
		return getJdbcTemplate().queryForObject(SQL_BY_ID, new Object[]{id}, 
				new BeanPropertyRowMapper<Applicazione>(Applicazione.class));
	}

	public List<Applicazione> getApplicazionei(int serverId) {
		return getJdbcTemplate().query(SQL_BY_SERVER, new Object[]{serverId}, 
				new BeanPropertyRowMapper<Applicazione>(Applicazione.class));

	}

	public void insertApplicazione(Applicazione applicazione) {
		Object[] params = new Object[]{applicazione.getNome(), applicazione.getTecnologia(), applicazione.getWeb()};
		getJdbcTemplate().update(INSERT, params);

	}

	public void updateApplicazione(Applicazione applicazione) {
		Object[] params = new Object[]{applicazione.getNome(), applicazione.getTecnologia(), applicazione.getWeb(), applicazione.getId()};
		getJdbcTemplate().update(UPDATE, params);
	}

	public List<Applicazione> getApplicazioni() {
		return getJdbcTemplate().query(SQL, new BeanPropertyRowMapper<Applicazione>(Applicazione.class));
	}

}
