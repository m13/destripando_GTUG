package gtug.fourth;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

public class Main extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) 
    {
    	CtrlAuth.getInstance().auth = "";
    	
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        CtrlAuth.getInstance().context = getBaseContext();
        CtrlAuth.getInstance().secretNum = 13;
        
        TelephonyManager tManager = (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
        String uid = tManager.getDeviceId();
        
        Log.d("-uid-", uid+" ");
        
        if ((uid == null || uid.equals("000000000000000"))) {
        	
			Intent i = new Intent();
			i.setClass(getBaseContext(), Error.class);
			i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			startActivity(i);
			finish();
			
        } else {
        
	        if (!CtrlAuth.getInstance().auth.equals("")) {
	        	
	        	Toast.makeText(getBaseContext(), "¡Bienvenido "+CtrlAuth.getInstance().auth+"!", Toast.LENGTH_LONG).show();
	        	
				Intent i = new Intent();
				i.setClass(getBaseContext(), Yeah.class);
				i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
				startActivity(i);
				finish();
				
	        } else {
	        
		        Button button;
				button = (Button) findViewById(R.id.ok);
				button.setOnClickListener(new OnClickListener() {
					public void onClick(View v) {
						ProgressBar pb = (ProgressBar) findViewById(R.id.ProgressBar);
						pb.setVisibility(View.VISIBLE);
						pb.setProgress(50);
						
						Toast.makeText(getBaseContext(), "¡En breve recibiras un SMS de comprobación con un código númerico!", Toast.LENGTH_LONG).show();
					}
				});
				
				button = (Button) findViewById(R.id.salir);
				button.setOnClickListener(new OnClickListener() {
					public void onClick(View v) {
						finish();
					}
				});
	        }
        }
    }
}