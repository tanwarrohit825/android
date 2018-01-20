-------------------------other rule---------------------

#give id 
<button,object name>.setId(<id no.>);

#input text 
EditText <object name> = new EditText(this);








-------------make button-------------

#for button
import android.widget.Button;

#make button
Button <button name> = new Button(this);

#add text on button
<button name>.setText("<add taext>");

-----------add widgets together --------------

#add widgets meathed called
<layout name>.addView(<widget name>);

#take main interface or display
setContentView(<layout name>);












----------------- for see the activite ----------------------
import android.util.Log;


-----------------layout ----------------

#import for layout
import android.widget.RelativeLayout;

		#make relativelayout object 
		RelativeLayout <layout name> = new RelativeLayout(this);

# import for button
import android.widget.Button;


		#making button
		Button <button name> = new Button(this);

        #add text on button
        <button name>.setText("<add taext>");

 -----------------add widgets together -------------

#add widgets meathed called
<layout name>.addView(<widget name>);

#take main interface or display
setContentView(<layout name>);

----------------------------- using color -------------------------

#import for  colour
import android.graphics.Color;

			#using color in layout
			<layout name>.setBackgroundColor(Color.<color name>);

			-----background  color ---
     		#change text colour
     		<button name>.setBackgroundColor(Color.<color name>);


------------------------- add rule -----------------------------

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

#give rule to postion widgets
<object name>.addRule(RelativeLayout.<requriment>,<button name>.getId(<Id no.>));

#adding margins "enter value in no ---1,3,60...."
<object name>.setMargins(<left>,<top>,<right>,<bottom>);

-------------cconvert DIP to Pixel ------------


 #import for contvert Dip to pixel
import android.content.res.Resources;
import andrid.util.TypedValue;

 note-----"always btw addRule and addView"

 		Resources <valiable name> = getResources();
 		int <valiable name for store pixel vale> = (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP,<how many to contvert>
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

----------more comming soon ------

