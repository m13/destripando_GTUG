package ins.tall;

import java.io.Serializable;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;

public class Remote implements Serializable {
	private static final long serialVersionUID = 221453436L;
	
	private int image = R.drawable.y;
	private int text = R.string.yuri;
	
	
	public Remote() {}
	
	public void exec(Context context) {
		ImageView iv = (ImageView) ((Main)context).findViewById(R.id.x1);
		iv.setImageResource(image);
		TextView tv = (TextView) ((Main)context).findViewById(R.id.x2);
		tv.setText(text);
	}
	
}
