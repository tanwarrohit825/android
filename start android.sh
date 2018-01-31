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

------------------Save Data ------------

#make a java class
 public class <java class name> {
 	private int _id;
 	private String _productname;

 	#make empty constuctor
 	public Products(){ 
 	}

 	#add contructor

 	public <java class name> (String productname){
 		this._productname = productname;
 	}

 	#add setter
 	#add getter
}

#make new java class
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelp;
import android.database.Cursor;
import android.content.Context;
import android.content.contentValues;

public class MyDBHandler extend SqLiteOpenHelp{
	private static final int DATABASE_VERSION = 1;
	private static final String DATABASE_NAME = "Product.db";
	public static final String TABLE_PRODUCTS = "Products";
	public static final String COLUMN _id = "_id";
	public static final String COLUMN _PRODUCTNAME = "productname";

	#make constuructor(MyDBHandler)
	#override method(onCreate and onUpgrade)


	#in onCreate
	String <string name> = "CREATE TABLE " + TABLE_PRODUCTS + "(" + 
			COLUMN_ID+ "INTERGER PRIMARY KEY AUTOINCREMENT"+ COLUMN_PRODUCTNAME + "TEXT" +");";
	db.execSQL(query);

#onUpgrade
	db.execSQL("DROP TABLE IF EXISTS" +TABLE_PRODUCTS);
	onCreate(db);


//add a new row to the data base
public void addProduct(Product product){
	ContentValues <store variable>  = new ContentValues();
	values.put(COLUMN_PRODUCTNAME , product.get_productname());;
	SQLiteDatabase db = getWriteableDatabase();
	db.insert(TABLE_PRODUCTS ,null ,value);
	db.close();
}


//delete the product from database 
public void deleteProduct(String ProductName){
	SQLiteDatabase db = getWriteableDatabase();
	db.execSQL("DELETE FROM " + TABLE_PRODUCTS + "WHERE " + COLUMN_PRODUCTNAME +
	 "=\"" +ProductName + "\";" );
}

//PRINT THE Data base 
	public string databaseTOString(){
		String dbSrting = "";
		String data = "SELECT * FROM" + TABLE_PRODUCTS + "WHERE 1";

		//Cursor point 
		Cursor c = db.rawQuery(query,null);
		c.moveToFirest();
		while(!c.isAfterLast()){
			if(c.getString(c.getColumnIndex("productname"))!= null){
				dbSrting += c.getString(c.getColumnIndex("Productname"));
				dbSrting += "\n";
			}
		}
		db.close();
		return dbSrting;
	}

+++In MainActivity +++++

---------------create video player------------
import android.widget.VideoView;
import android.widget.mediaContrller;

#in onCreate
 final VideoView <VideoView name> = (VideoView) findViewId(R.id.<VideoView id>);
 <VideoView name>.setVideoPath("<path name>");

 //palyer control
 MediaContrller mediaController = new MediaController(this);
 mediaContrller.setAnchorView(<VideoView name>);
 <VideoView name>.setMediaController(mediaController);

 VideoView.Start();

#in AndroidManifest
#you need permission

<user-permission android:name="android.permission.INTERNET" />


------------------------Image Capture -----------

#in AndroidMainfest
<user-feature android:name="android.hardware.camera" android:required= "true" />

#in MainActivity

import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import android.content.pm.PacageInfo;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

static final int REQUEST_IMAGE_CAPTURE= 1;
ImageView <ImageView name>;


#in onCrete

Button <Button name>  = (Button) findViewId(R.id.<Button id>);
<ImageView name> = (ImageView) findViewId(R.id.<ImageViewid>);

//Disable the button having camera

if(!hascamera()){
	<button name>.setEnable(false);
}


// cheack having camera

private boolean hascamera(){
	return getpackageManager().hasSystemFeature(PackageManager.FEATURE_CAMERA_ANY);
}


#IN onClick
public void <onClick method name> (View view){
	Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
	//tAKING PHOTO
	startActivityForResult(intent, REQUEST_IMAGE_CAPTURE);
}

//iF YOU want to return the Image
#in over ride method
#in onActivityResult
if(requestCode== REQUEST_IMAGE_CAPTURE && resultCode == RESULT_OK){
	//get the PHOTO
	Bundle extra = data.getExtras();
	Bitmap photo = (Bitmap) extra.get("data");
	<ImageView name>.setImageBitmap(Photo);
}

















