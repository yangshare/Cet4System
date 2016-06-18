package junit.test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		
		@SuppressWarnings("unused")
		String week = null;
		Date date = new Date();
		DateFormat daformat = new SimpleDateFormat("yyyy年MM月dd日");
		@SuppressWarnings("unused")
		String da = daformat.format(date);
		switch(date.getDay())
		{
			case 0:
				week="星期日";
				break;
			case 1:
				week="星期一";
				break;
			case 2:
				week="星期二";
				break;
			case 3:
				week="星期三";
				break;
			case 4:
				week="星期四";
				break;
			case 5:
				week="星期五";
				break;
			case 6:
				week="星期六";
				break;
			default:
				break;
		}
	}

}
