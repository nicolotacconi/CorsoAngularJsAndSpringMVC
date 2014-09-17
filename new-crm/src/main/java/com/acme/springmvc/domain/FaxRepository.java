package com.acme.springmvc.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class FaxRepository {

	private List<Fax> list = new ArrayList<Fax>();

	public FaxRepository() {
		list.add(newFax(1L));
		list.add(newFax(2L));
		list.add(newFax(3L));
		list.add(newFax(4L));
		list.add(newFax(5L));
	}

	private Fax newFax(long l) {
		Fax fax = new Fax();
		fax.setId(l);
		return fax;
	}

	public List<Fax> list() {
		return list;
	}

}
