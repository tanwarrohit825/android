=======create a new XML file======

in android view -> layout -> right click ->new -> Layout resource file

----add java class -----

in android view -> java -> <your package name> ->right click -> new -> create a new java class

-----use XML ----------


View <store valiable> = inflater.inflate(R.layout.<fragement name>,container,false);
return <store valiable>;



-----------add referance ot the valiable ----------

#defiine the valiable
private staic <valiable type> <valiable name>;
	
	#assine the valiable
	<valiable name> = (<valiable type>) view.findViewByid(R.id.<valiable name>);

	#assine in the button
	final Button <button name> =(Button) view.findViewByid(R.id.<button name>);


------------ animation and transitions ----------------

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;


	#referance the layout 
	ViewGroup <layout name>;

	#in onCreate
	<layout name> = (ViewGroup) findViewByid(R.id.<layout name>);

	<layout name>.setOnTouchListener(){
		public boolean onTouch(View v,MotionEvent event){
			moveButton();
			return true;

		}
	}

	public void moveButton(){
		View <button name> = findViewByid(R.id.<button id>);

		#change the postion of the button
		RelativeLayout.LayoutParams postionRule = new RelativeLayout.LayoutParams(
			RelativeLayout.LayoutParams.WRAP_CONNTENT,RelativeLayout.LayoutParams.WRAP_CONNTENT);

		

	}