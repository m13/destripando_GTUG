package gtug.third;

import java.util.Calendar;
import java.util.Date;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Yeah extends Activity {
		
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.yeah);
        
        LinearLayout ll = (LinearLayout) findViewById(R.id.root);
        
        Cursor cr = CtrlDb.getInstance().getNotes();
        
        if (cr.moveToFirst()) {
		do {
			View child = getLayoutInflater().inflate(R.layout.yeahx, null);
			
			Long date = cr.getLong(cr.getColumnIndex("time"));
			String text = cr.getString(cr.getColumnIndex("str"));

			Calendar cal = Calendar.getInstance();
			cal.setTime( new Date(date) );
			String strDate = String.format("%02d/%02d/%02d",
					cal.get(Calendar.DATE),
					cal.get(Calendar.MONTH)+1,
					cal.get(Calendar.YEAR));
			
			((TextView)child.findViewById(R.id.Date)).setText(strDate);
			((TextView)child.findViewById(R.id.Text)).setText(text);
			
			ll.addView(child);
			
		} while(cr.moveToNext());
        }
		cr.close();
		
		Button button = (Button) findViewById(R.id.bt);
		button.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				EditText et = (EditText) findViewById(R.id.text);
				CtrlDb.getInstance().saveNote(et.getText().toString());
			}
		});
    }
}
