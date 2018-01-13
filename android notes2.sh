




    //////--------make button-------/////

#for button
import android.widget.Button;

#make button
Button <button name> = new Button(this);

#add text on button
<button name>.setText("<add taext>");

    ///////------add widgets together ---////

#add widgets meathed called
<layout name>.addView(<widget name>);

#take main interface or display
setContentView(<layout name>);

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
  //input text co
  String <store input text variable> = <enter text>.getText().toString(); 








