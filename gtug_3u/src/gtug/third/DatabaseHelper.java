package gtug.third;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class DatabaseHelper extends SQLiteOpenHelper {

	private static final String DATABASE_NAME = "GTUG";
	private static final int DATABASE_VERSION = 1;
	
	public DatabaseHelper(Context context) {
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {
		Log.d("DB", "onCreate");
		String[] sqlBlock = new String[] {
				"CREATE TABLE users (user TEXT, pass TEXT)",
				"CREATE TABLE notes (time INTEGER, str TEXT)"
		};
	
		for (String sql : sqlBlock) { db.execSQL(sql); }
	}
	
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		Log.d("DB", "onUpgrade");
		String[] sqlBlock = new String[] {
			"DROP TABLE IF EXISTS users",
			"DROP TABLE IF EXISTS notes"
		};

		for (String sql : sqlBlock) { db.execSQL(sql); }
		onCreate(db);
	}
}
