package com.pminformatica.website.dao.interfacce;

import com.pminformatica.website.dto.Security;

public interface ISecurityDao {

	static String SELECT_SECURITY = "SELECT * FROM SECURITY WHERE USERNAME = ? AND PASSWORD = ?";

	public Security checkUsernameEPassword(String username, String password);
}
