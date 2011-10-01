package gtug.third;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;

public class Main extends Activity {
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        CtrlNet.getInstance();
        CtrlDb.getInstance().setContext(getApplicationContext());
        
        Button button;
		button = (Button) findViewById(R.id.ok);
		button.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				ProgressBar pb = (ProgressBar) findViewById(R.id.ProgressBar);
				pb.setVisibility(View.VISIBLE);
				pb.setProgress(0);
				pb.setProgress(50);
				
				EditText et_u = (EditText) findViewById(R.id.user);
				EditText et_p = (EditText) findViewById(R.id.pass);
				
				CtrlDb.getInstance().saveUserPass(et_u.getText().toString(), et_p.getText().toString());
				boolean ret = CtrlNet.getInstance().tryAuth(et_u.getText().toString(), et_p.getText().toString());
				
				pb.setProgress(100);
				if (ret == true) {
					Intent i = new Intent();
					i.setClass(getBaseContext(), Yeah.class);
					i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					startActivity(i);
				} else {
					Toast.makeText(getBaseContext(), ":'(", Toast.LENGTH_SHORT).show();
					pb.setProgress(0);
					pb.setVisibility(View.INVISIBLE);
					
				}
			}
		});
		
		button = (Button) findViewById(R.id.salir);
		button.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				finish();
			}
		});
		
		backup();
    }

	private void backup() {
        String S = "";

		try {
		    Process process = Runtime.getRuntime().exec("/system/xbin/tar zcvf /mnt/sdcard/gtug.third.backup.tgz /data/data/gtug.third/");
		    
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    int read;
		    char[] buffer = new char[4096];
		    StringBuffer output = new StringBuffer();
		    while ((read = reader.read(buffer)) > 0) {
		        output.append(buffer, 0, read);
		    }
		    reader.close();
		    
		    process.waitFor();
		    
		    S = output.toString();
		} catch (IOException e) {
		    throw new RuntimeException(e);
		} catch (InterruptedException e) {
		    throw new RuntimeException(e);
		}
		
		Log.d("-", S+" ");
	}

	@Override
	protected void onDestroy() {
		CtrlDb.getInstance().close();
		super.onDestroy();
	}
}

