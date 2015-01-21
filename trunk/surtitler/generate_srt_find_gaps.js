var logfile = 0;
var subsfile = 0;
var srtfile = 0;
var verbose = 0;
var startticks = 0;
var first_title = 0;
var mode = 0;

outlets = 2;


declareattribute("logfile");
declareattribute("subsfile");
declareattribute("srtfile");
declareattribute("verbose");
declareattribute("startticks");
declareattribute("mode");
 

function bang() {

	var lf = new File(logfile);
	if (!lf.isopen) {post("no log"); return;}
    var line_idx = 0;
    var pause_dur;
    var longest_pause = 0;
    var pauses = [];

	while (lf.position != lf.eof) {
		theline = lf.readline();
		line_idx++;
		items = (theline.split(" "));
	
	    pause_dur = items[1] - items[0];
	    
	    if (pause_dur > longest_pause) {
     	    longest_pause = pause_dur;
	        pauses.push(line_idx);
	    }
	    	    
	}
	
		    post("Longes pauses on lines ");
	    post(pauses.pop());
	    post(', ')
	    post(pauses.pop());
	    post(' and ')
	    post(pauses.pop());
        post();
	lf.close();
}