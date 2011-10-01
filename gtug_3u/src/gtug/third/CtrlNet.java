package gtug.third;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.X509TrustManager;

import org.apache.http.util.ByteArrayBuffer;

import android.util.Log;

public class CtrlNet {

	private static String webUrl = "https://dafib.upc.edu/gtug/auth.php";
	
	private static CtrlNet INSTANCE = null;
	
	public static CtrlNet getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new CtrlNet();
		}
		return INSTANCE;
	}
	
	public boolean tryAuth(String user, String pass) {
		String post = "user="+user+"&pass="+pass;
		boolean ret = doPost(webUrl, post);
		Log.d(" ", ret+" ");
		return ret;
	}
	
    private boolean doPost(String urlString, String content) {
    	Log.d("urlString", urlString);
    	String body = "DefaultError";
    	
    	try {
	    	trustEveryone();
	        URL url = new URL(urlString);
	        HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
	        con.setConnectTimeout(10000);
	        con.setRequestMethod("POST");
	        con.setRequestProperty("referer", urlString);
	        con.setDoOutput(true);
	        con.setDoInput(true);
	        con.connect();
	        
	        OutputStream out = con.getOutputStream();
	        byte[] buff = content.getBytes("UTF8");
	        out.write(buff); out.flush(); out.close();

	        InputStream is = con.getInputStream();
			BufferedInputStream bis = new BufferedInputStream(is, 655350);
			ByteArrayBuffer baf = new ByteArrayBuffer(655350);
			int current = 0;
			while((current = bis.read()) != -1) {
				baf.append((byte)current);
			}
			body = new String(baf.toByteArray());

    	} catch (IOException e) {
    		e.printStackTrace();
    		return false;
    	}
    	
    	Log.d(" ", body+" ");
		return body.trim().equals("1");
    }
    
	
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // ¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡ NO USAR ESTA FUNCION !!!!!!!!!!!!!!!!!!!!!!!!!
    //
	// http://stackoverflow.com/questions/1217141/self-signed-ssl-acceptance-android
	private void trustEveryone() {
		try {
			HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier(){
				public boolean verify(String hostname, SSLSession session) {
					return true;
			}});
			SSLContext context = SSLContext.getInstance("TLS");
			context.init(null, new X509TrustManager[]{
				new X509TrustManager(){
					public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {}
					public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {}
					public X509Certificate[] getAcceptedIssuers() {	return new X509Certificate[0]; }
				}
			}, new SecureRandom());
			HttpsURLConnection.setDefaultSSLSocketFactory(context.getSocketFactory());
		} catch (Exception e) { // should never happen
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
}
