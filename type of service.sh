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

	Runnable <Runnable variable> = new Runnable(){
		@Override
		public void run (){
			for(int i =0;i<5;i++){
				long <time variable> = System.currentTimeMillis() + 5000;
				while(System.currentTimeMillis() <time variable>){
					synchronized (this)
					try{
						wait(<time variable>-System.currentTimeMillis());
						Log.i(TAG,"<Enter the tag hear>");
					}catch(Exception e){ }
				}
			}
		}
	}

	#Under the OnstartCommend
	Thread <Thread name> = new Thread(<runner object>);
	<Thread name>.start();
	return service.START_STICKY;



#in onCreate
Intent <Intent variable> = new Intent (this,<service class name>.class);
startSevrice(Intent variable);



------------Bound Service-----------------
#in MyService
import android.os.Binder;
import java.text.SimpleDataFormate;
import java.util.Date;
import java.util.Locale;
//create a object
	private final IBinder <IBinder object name> = new  <new java class name>();


#in MyService
public class <new java class name> extend Binder{
	MyService getService(){
		return MyService.this;
	}
}

#in onBind
return <IBinder object> ;

#in MyService
public String getCurrentTime(){
	SimpleDataFormate df = new SimpleDataFormate("HH:mm:ss",Local.us);
	return (df.format(new Date()));
}

++++++ in main class

import android.view.View;
import android.widget.TextView;
import android.os.IBinder;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import <package name(MyService class)>.MyService.<binder name>;

#in main class
//MyService object
	MyService <my Service object>;
	boolean is = false;

private ServiceConnection <ServiceConnection name> = new ServiceConnection(){
	#in onServiceConnect
	<binder name> binder = (MyLocalBinder) service;
	<service name> = binder.getService();
	isBound = true;

	#in onServiceDisconnect
	isBound = false;

#in onCreate
Intent i = new Intent(this,<service class name>.class);
binderService(i,<ServiceConnection name>,Context.BIND_AUTO_CREATE);
}

#in main class
public void <onClick methode name> (View view){
	String <time class> = <service name>.getCurrentTime();
	TextView <Text name> = (TextView) findViewById(R.id.<text id>);
	<text name>.SetText(<time class>);
}








