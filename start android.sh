-------------------Start android-----------------

------ListView-----------
import android.app.Activity
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

#extend to Activity
#in onCreate
	String[] <Array name> = {"Rohit","Neha","Vinod","Pramila","Ratani"};
	//using Adapter
	ListAdapter <Adapter name> = new ArrayAdapter<String>(this,android.R.Layout.simple_List_item_1,<Array name>);
	ListView <ListView name> = (ListView) findViewId(R.id.<ListView id>);
	<ListView name>.setAdapter(<Adapter name>);

++when we click the any one 
#in onCreate
<ListView name>.setOnItemClickListener(
		new AdapterView.OnItemClickListener(){
			//in override methed
			//press OnItemClick
				String <store value> = String.valueOf(parent.getItemPosition(position));
				Toast.makeText(MainActivity.this,<store value>, Toast.LENGTH_LONG).show();
		}
	);

------------------------Costom ListAdapter ----------------

#create a new java class
#import
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class Adaptor extend ArrayAdapter<String>{
	#adding adapter
	#press Alt+Insert
	#press ArrayAdapter
	CustomAdapter(Context context , String[] <Array name>){
		super(content,R.Layout.<custom_row>, <Array name>);
	}	

	#in custonAdapter
	#in getView
	LayoutInflater <LayoutInflater name> = LayoutInflater.from(getContext());
	View customView = <LayoutInflater name>.inflate(R.layout.<XML file name> , parent,false);

	String <String name> = getItem(position);
	TextView <TextView name> = (TextView) customView.findViewId(R.id.<TextView id>);
	ImageView <ImageView name> = (ImageView) customView.findViewId(R.id.<ImageView id>);

	<TextView name>.setText(<String name>);
	<ImageView name>.setImageResource(R.drawable.<Image name>);
	return customView;
++++++In MainActivity-----
#in onCreate
#change the addapter
ListView <ListView name> = new <java class name>(this,<constructor name>);


