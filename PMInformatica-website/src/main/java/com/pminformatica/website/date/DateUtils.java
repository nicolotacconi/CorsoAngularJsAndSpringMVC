package com.pminformatica.website.date;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {

	/**
	 * Converte un oggetto Date in una Stringa del formato indicato Nel caso in
	 * cui la data sia null viene restituito blank
	 * 
	 * @param date
	 *            la data da convertire
	 * @param format
	 *            il formato di output
	 * @return la data nel formato indicato
	 */
	public static String toString(Date date, String format) {
		String result = "";

		if (date != null) {
			SimpleDateFormat toDateOk = new SimpleDateFormat(format);
			result = toDateOk.format(date);
		}

		return result;
	}
}
