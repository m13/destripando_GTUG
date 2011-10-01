package gtug.fourth;

import android.content.Context;


public class CtrlAuth {
	
	private static CtrlAuth INSTANCE = null;
	public String auth = "test";
	public Integer secretNum = 0;
	public Context context;
	
	public static CtrlAuth getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new CtrlAuth();
		}
		return INSTANCE;
	}
}
