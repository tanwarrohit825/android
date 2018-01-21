-----type of service-------


------------Intent Sevice ------------
#create the a new java class
import android.app.IntentService;
import android.content.Intent;
import android.util.Log;

// extend the class
public class <java class name> extend IntentService{


	private static final String TAG = "<package name>";

	#press alt+insert -> constructor
	public <java class name> (){
		super("<java class name>");
	}

	#in override message
	//this is the service does
	#in OnHandleIntent
	Log.i(TAG,"<text message>");
}

		+++++ in androidManifest++++

		#in write above application and blow activity
		// dot is main
		<service android:name="<.java class name>" />


 ++++in main class
 #in onCreate
 Intent <variable name> = new Intent(this,<java class name>.class);
 startSevrice(<variable name>);

-----------------------service -------------
#right click -> new -> sevice -> service 
//set  log message
import android.util.Log;

#in above constructor
 	private static final String TAG = "<package name>";

#in onBind service
return null;

#in <service class> 
#override method -> onStartCommand and OnDistroy
	//in OnDistroy
	Log.i(TAG,"<Your message");

	//in onStartCommand
	Log.i(TAG,"<TAG message>");










