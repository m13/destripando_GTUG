package gtug.third;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class CtrlDb {
	
	private static CtrlDb INSTANCE = null;
	private SQLiteDatabase db = null;
	
	public static CtrlDb getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new CtrlDb();
		}
		return INSTANCE;
	}

	public void setContext(Context context) {
		db = (new DatabaseHelper(context)).getWritableDatabase();
	}

	public void close() {
		db.close();
	}
	
	public void saveUserPass(String user, String pass) {
		String sql = "INSERT INTO users (user, pass) VALUES ('"+user+"','"+pass+"')";
		db.execSQL(sql);
	}
	
	public void saveNote(String note) {
		String sql = "INSERT INTO notes (time, str) VALUES ('"+System.currentTimeMillis()+"','"+note+"')";
		db.execSQL(sql);
	}
	
	public Cursor getNotes() {
		String sql = "SELECT time, str FROM notes ORDER BY time DESC LIMIT 10";
		Cursor cr = db.rawQuery(sql, null);
		return cr;
	}
}

