





----------------------------- using color -------------------------

#using colour
import android.graphics.Color;

#using color in layout
<layout name>.setBackgroundColor(Color.<color name>);

#using color in button

   ------ background  color ---
     #change text colour
     <button name>.setBackgroundColor(Color.<color name>);

-------------------------- add rule -----------------------------

note ---- "always btw layout and button"

#RelativeLayout
RelativeLayout.LayoutParams <object name> = new RelativeLayout.LayoutParams(
	RelativeLayout.LayoutParams.WRAP_CONTENT,
	RelativeLayout.LayoutParams.WRAP_CONTENT
);

<object name>.addRule(RelativeLayout.CENTER_HORIZONTAL);
<object name>.addRule(RelativeLayout.CENTER_VERTICAL);

#add widget to layout 
<layout name> .addView(<button name>,<object name>);


-------------------------user input --------------

#input text 
EditText <object name> = new EditText(this);

#give id 
<button,object name>.setId(<id no.>);

#give rule to postion widgets
<object name>.addRule(RelativeLayout.<requriment>,<button name>.getId(<Id no.>));

#adding margins
<object name>.setMargins(<left>,<top>,<right>,<bottom>);

#convert DIP to Pixel
  
  #import for contvert Dip to pixel
  import android.content.res.Resources;
  import andrid.util.TypedValue;

 note-----"always btw addRule and addView"

 	Resources <valiable name> = getResources();
 	int <valiable name for store pixel vale>  = (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP,<how many to contvert>
 		r.getDisplayMetrics()
 		);

<object name> .setWidth(px);






----------------------------------------- event handlinng----------------------------------------

# import for event handling
 import android.view.View;

 # for button(from making button---layout)
 import android.widget.Button;

 #
 import android.widgets.TextView;

 	#referance to the button
    Button <button id or button name> = (Button)findViewById(R.id.<button id>);

<button name>.setOnClickListener(
	new Button.OnClickListener(){
		\\call back meathed
		public void onClick(View v){
			  TextView <text name> = (TextView)findViewById(R.id.<text id>);
			  <text name>.setText("<enter the text>");
		   }


		}
	);

------------------------ multipal event handling --------------
 note ------"always out from other Listener"

<button name>.setOnLongClickListener(
		new Button.OnLongClickListener(){
			public boolean onLongClick(View v){
				TextView <textname> = (TextView)findViewById(R.id.<text id>);
				<text name>.setText("<enter the text>");
			}
		}
	);

-------------------- multipal gestures --------------

#import for motion 
import android.view.MotionEvent;

#import for gesture detector
import android.view.GestureDetector;

#import for gesture 
import android.support.v4.view.GestureDetectorCompat;


		# in mian activity add this
		public class MainActivity extands ActionBarActivity "implements GestureDetector.onGestureListener,GestureDetector.onDoubleTapListener"{

			private TextView <text id>
			private GestureDetectorCompat <object name>;

			# after that on create "press Alt + Insert" hit Implement Method

			"In onCreate"
			<text id> = (TextView)findViewById(R.id.<text id>);
			this.<object name> = new GestureDetectorCompat(this,this);
			<object name>.setOnDoubleTapListener(this);

			"In all override message"
			<text id>.setText("enter the text");

		}



--------------- 0.send data to the another activity ---------

import android.content.Intent;
import android.view.View;

#under onCreate
public void onClick( View view){
	Intent <valiable name> = new Intent (this,<class name>.class);
  startActivity(<valiable name>);
}

----------------- 1.send data to another activity (imp) --------
import android.widgets.EditText;

#in on click btw Intent and startActivity
  #taking input
  final EditText <enter text> = (EditText) findViewById(R.id.<input text id >);
  //input text in string
  String <store input text variable> = <enter text>.getText().toString(); 

  //take extra vale in the from of key value pair,
  //store input text variable (user message)
  <variable name>.putExtra("<call of info>",<store input text variable>);
#heandle the funtion in other class
	input android.widgets.TextView;
	#in onCreate
	//data name == where we store the data
	Bundle <data name> =getIntent().getExtras(); 
	//the app not creach
	if(<data name> == null){
		return;
	}
	String <call the info> = <data name>.getString("<call the info>");
	//new store value == showing in another activity
	final TextView <new store value> = (TextView) findViewById(R.id.<another activity id name>);
	<new store value>.setText(<call the info>);

----------------broadcast intents----------------
#one project commenicate with one 
import android.content.Intent;
import android.view.View;

#in main activirty
public void sendOutBroadcast(View view){
	Intent <variable name> = new Intent();
	<variable name>.setAction("<name of your java class>.sendbroadcast");
	//change the android version so we apply this
	<variable name>.addFlags(Intent.FLAG_INCLUDE_STOPPED_PACKAGES);
	sendbroadcast(i);
}


++++++++++++++++++ make other
create a new project-> select no activity -> in project -> app -> java -> <our package name> 
->right click ->new ->other ->

import android.widget.Toast;

#in onReceive
Toast.makeText(context,"<write the text>",Toast.LENGTH_LONG).show();

#filter the broadcast
notes:-
//in->manifests->androidManifest
//in receiver
	<intent-filter>
		<action android:name="<package name>"></action>
	</intent-filter>


------------------ 39. Threads-handler -----------
import android.view.View;
import android.widget.TextView;
import android.os.Handler;
import android.os.message;

#in main activity
//make Handler
	
	Handler <handler name> = new Handler(){
		#press Alt+ Insert -> override Methods -> handleMessage
		//put your cahnge text
	TextView <text name> = (TextView) findViewById(R.id.<Text id>);
	<text name>.setText("<enter the text");
	};

public void <on click name>(View view){

	Runnable < runner variable name> = new Runnable(){
		//code compleate
		#in void run
	//make variable go for future time
	long  <make variable> = System.currentTimeMillis() + 10000;
	while(System.currentTimeMillis()< <variable name>){
		synchronized (this){
			try{
				wait(<variable name>-System.currentTimeMillis();)
			}catch(Exception e){ }
		}
	}
	handler.sendEmptyMessage(0);

	};

	Thread <thread name> = new Thread (<runner variable name>)
	<thread name>.start();
}


--------



