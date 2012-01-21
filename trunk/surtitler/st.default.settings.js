var preferences_path;

function setting (name,setting) {
	var fname = preferences_path+name+".txt";
	var f;
// see if file exists already
	f = new File(fname);
	if (f.eof == -1) {
		f = new File(fname, "write");	
		f.open()
		f.writestring(setting);
		f.close();
	}
}

function paths(p,home) {
	var i;


	preferences_path = p + "/";

	setting ("beamer_ip",							"10.0.2.20");
	setting ("font", 								"Lucida Grande");
	setting ("size", 								"40");
	setting ("espacement", 							"0.12");
	setting ("position"	, 							"-0.614");
	setting ("enable_keyboard"	, 					"1");
	setting ("auto_reload"	, 					"0");
	setting ("gnusb"	, 					"0");
	setting ("display_french"	, 					"1");
	setting ("display_german"	, 					"1");
	setting ("file", 								"Boxon:/Users/me/patchesMAX5/opera2010/surtitres.txt");

}
