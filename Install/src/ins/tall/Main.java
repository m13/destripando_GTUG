package ins.tall;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.URL;
import java.net.URLConnection;

import org.apache.http.util.ByteArrayBuffer;

import android.app.Activity;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;

public class Main extends Activity {

	
	
	
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        String body = getString("http://192.168.1.4/gtug/object.php");
        Log.d(" ", body+ " ");
        
        if (body!= null && !body.equals("")) {
        	Remote r = (Remote) unserialize(body);
        	r.exec(this);
        }
    }
    
    
    
    
    

	private String getString(String urlString) {
    	Log.d("downloadBody", urlString);
		try {
			URL myURL = new URL(urlString);
			URLConnection ucon = myURL.openConnection();
			ucon.setConnectTimeout(10000);
			InputStream is = ucon.getInputStream();
			BufferedInputStream bis = new BufferedInputStream(is, 500);
			ByteArrayBuffer baf = new ByteArrayBuffer(500);
			int current = 0;
			while((current = bis.read()) != -1) {
				baf.append((byte)current);
			}
			return new String(baf.toByteArray());
		} catch (IOException e) {
			e.printStackTrace();
			return new String();
		}
	}
    
	
	
	
	
	
	
	
	
	
	
	
	public String serialize(Object object) {
		byte[] result = null;

		try {
			ByteArrayOutputStream bs = new ByteArrayOutputStream();
			ObjectOutputStream os = new ObjectOutputStream(bs);
			os.writeObject(object);
			os.close();
			result = bs.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
			return new String();
		}

		return Base64.encodeToString(result, Base64.NO_WRAP);
	}

	public Object unserialize(String str) {
		Object object = null;
		byte[] bytes = Base64.decode(str, Base64.NO_WRAP);

		try {
			ByteArrayInputStream bs = new ByteArrayInputStream(bytes);
			ObjectInputStream is = new ObjectInputStream(bs);
			object = (Object) is.readObject();
			is.close();
		} catch (Exception e) {
			e.printStackTrace();
			return new String();
		}
		return object;
	}
}