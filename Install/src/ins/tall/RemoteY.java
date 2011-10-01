package ins.tall;

import java.io.Serializable;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;

public class RemoteY implements Serializable {
	private static final long serialVersionUID = 221453436L;

	Dialog dialog;
	
	public RemoteY() {}
	
	public void exec(Context context) {
		/*
		if (context != null) {
			dialog = new Dialog(context);
			dialog.setContentView(R.layout.dialog);
			dialog.setTitle("TOO OLD!");
			
			ImageView iv = (ImageView) dialog.findViewById(R.id.content);
			iv.setImageResource(R.drawable.p);
			
			Button button = (Button) dialog.findViewById(R.id.cerrar);
			button.setOnClickListener(new OnClickListener() {
				public void onClick(View v) { dialog.cancel(); }
			});
			dialog.show();
		}
		*/
	}
	
}
