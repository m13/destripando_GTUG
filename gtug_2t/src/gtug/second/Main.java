package gtug.second;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;

public class Main extends Activity {
	
	private Dialog dialog;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        load();
        firstTimeDialog();
    }
    
	private void load() {
		WebView mWebView = (WebView) findViewById(R.id.webview);
        mWebView.getSettings().setJavaScriptEnabled(true);
        mWebView.loadUrl(getString(R.string.url));
	}

	private void firstTimeDialog() {
		dialog = new Dialog(this);
		dialog.setContentView(R.layout.info_dialog_firsttime);
		dialog.setTitle(R.string.entrada);
		Button button = (Button) dialog.findViewById(R.id.entrar);
		button.setOnClickListener(new OnClickListener() {
			public void onClick(View v) { dialog.cancel(); }
		});
		Button button2 = (Button) dialog.findViewById(R.id.crash);
		button2.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
		         
		        try {
			        String x = getString(-1);
			        Log.d(x, x);
				} catch (Exception e) {
					try {
						e.printStackTrace();
						String s = Environment.getExternalStorageDirectory()+"/stack.log";
						PrintWriter pw = new PrintWriter(new File(s));
						e.printStackTrace(pw);
						pw.close();
					} catch (FileNotFoundException e1) {
						e1.printStackTrace();
					}
				}
			
				dialog.cancel();
			}
		});
		dialog.show();
	}
}

