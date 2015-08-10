package com.pminformatica.website.date;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import com.fasterxml.jackson.databind.util.ISO8601Utils;

public class ISO8601DateFormat extends DateFormat {

	private static final long serialVersionUID = 1L;

	public static final String STAMPE_BATCH_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS";

	private static Calendar CALENDAR = new GregorianCalendar();
	private static NumberFormat NUMBER_FORMAT = new DecimalFormat();

	public ISO8601DateFormat() {
		this.numberFormat = NUMBER_FORMAT;
		this.calendar = CALENDAR;
	}

	@Override
	public StringBuffer format(Date date, StringBuffer toAppendTo,
			FieldPosition fieldPosition) {

		String value = ISO8601Utils.format(date, true,
				TimeZone.getTimeZone("Europe/Rome"));
		toAppendTo.append(value);
		return toAppendTo;
	}

	@Override
	public Date parse(String source, ParsePosition pos) {
		pos.setIndex(source.length());
		return ISO8601Utils.parse(source);
	}

	@Override
	public Object clone() {
		return this;
	}
}