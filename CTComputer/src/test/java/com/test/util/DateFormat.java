package com.test.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat {
	private static SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	
	public static String dateToString(Date date){
		try {
			return dateFormat.format(date);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public static Date stringToDate(String date){
		try {
			return dateFormat.parse(date);
		} catch (Exception e) {
			e.printStackTrace();
			return new Date();
		}
	}
}
