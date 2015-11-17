package com.petease.app.common;

import java.util.Calendar;
import java.util.Date;

public class Formatter {
	public static String convertTo2Digtal(int n)
	{
		return n>9?String.valueOf(n):"0"+String.valueOf(n);
	}
	
	public static String date2String(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return String.valueOf(cal.get(Calendar.YEAR))+"-"
				+Formatter.convertTo2Digtal(cal.get(Calendar.MONTH)+1)+"-"
				+Formatter.convertTo2Digtal(cal.get(Calendar.DAY_OF_MONTH));
	}
	
	public static Date string2Date(String dateStr) {
		String[] dateStrArray = dateStr.split("-");
		Calendar cal = Calendar.getInstance();
		cal.set(Integer.parseInt(dateStrArray[0]), Integer.parseInt(dateStrArray[1])-1, Integer.parseInt(dateStrArray[2]));
		return cal.getTime();
	}
}
