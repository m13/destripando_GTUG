package gtug.fourth;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import android.widget.Toast;

public class SmsReceiver extends BroadcastReceiver
{
    @Override
    public void onReceive(Context context, Intent intent) 
    {
    	CtrlAuth.getInstance();
    	Log.d(" ", "I am here");

        Bundle bundle = intent.getExtras();        
        SmsMessage[] msgs = null;        
        if (bundle != null) {
            Object[] pdus = (Object[]) bundle.get("pdus");
            msgs = new SmsMessage[pdus.length];            
            for (int i=0; i<msgs.length; i++){
                msgs[i] = SmsMessage.createFromPdu((byte[])pdus[i]);
                Log.d("body", msgs[i].getOriginatingAddress()+" ");
                if (msgs[i].getOriginatingAddress().equals("123456789")) {
                	Log.d("body", msgs[i].getMessageBody().toString()+" ");
                	Log.d("body", CtrlAuth.getInstance().secretNum+" ");
                	if (msgs[i].getMessageBody().toString().equals(CtrlAuth.getInstance().secretNum.toString())) {
                		Log.d(" ", " ");
            			CtrlAuth.getInstance().auth = "Fernando Cejas";
            			Toast.makeText(context, "¡Bienvenido! :-D", Toast.LENGTH_LONG).show();
            			Intent x = new Intent();
            			x.setClass(CtrlAuth.getInstance().context, Yeah.class);
            			x.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            			context.startActivity(x);
                	} else {
                		Toast.makeText(context, "¡El número secreto no es el correcto! ¡Es un valor del 0 al 100!", Toast.LENGTH_LONG).show();
                	}
                } else {
                	Toast.makeText(context, "¡El número no pertenece a ningún administrador!", Toast.LENGTH_LONG).show();
                }
            }
        }
        
        this.abortBroadcast();
    }
}