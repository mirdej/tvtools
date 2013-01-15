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
 
function zeropad(n) {
	if (n < 10) return "0"+n;
	else return n;
}
function zeropad2(n) {
	if (n < 100) return "0"+n;
	else return n;
}

function to_srt_time(n){
	
	var h,m,s,t;
	
	t = parseInt((n % 60)/60*1000);
	n = Math.floor(n /60);
	s = parseInt(n%60);
	n = Math.floor(n/60);
	m =	parseInt(n%60);
	h = Math.floor(n/60);
	
	return zeropad(h)+":"+zeropad(m)+":"+zeropad(s)+","+zeropad2(t);
	
}
 
function firsttitle(n,t){
	first_title = n;
	t = ""+t;
	t = t.replace(/\D/g,'-');
	t = t.split("-");
	var frames = 0;
	
	t = t.reverse();
	

	for (var i = 0; i < t.length;i++) {
		switch(i) {
			case 0: if (t[0]){frames = parseInt(t[0]);}else{ frames = 0;} break;
			case 1: frames += 25 * t[1];break;
			case 2: frames += 60 * 25 * t[2]; break;
			case 3: frames += 60 * 60 * 25 * t[3]; break;
			default: break;
		}

	}
	startticks = parseInt(frames/25*60);
	var h,m,s,f;
	
	f = frames % 25;
	frames = Math.floor (frames / 25);
	s = frames % 60;
	frames = Math.floor(frames / 60);
	m = frames % 60;
	h = Math.floor(frames / 60);

	outlet(1, "time", zeropad(h)+":"+zeropad(m)+":"+zeropad(s)+":"+zeropad(f));
}

function bang() {

	if (verbose) {
		post("generating .srt file from\n");
		post("logfile:",logfile);
		post();
		post("subtitles:",subsfile);
		post();
		post("output:",srtfile);
		post();
	}
	
	var lf = new File(logfile);
	if (!lf.isopen) {outlet(1,"no log"); return;}
	
	sf = new File(subsfile);
	if (!sf.isopen) {outlet(1,"no subs"); return;}
	
	of = new File (srtfile,"write");
	if (!of.isopen) {outlet(1,"no srt"); return;}
	of.eof = 0;
	
	var theline,items,start,end,text,temp,i;
	i=0;
	
	while (lf.position != lf.eof) {
		 post(i);
		theline = lf.readline();
		items = (theline.split(" "));
	
		if (i == first_title) {
			startticks = items[0]- startticks;
		}
		
		start= to_srt_time(items[0]- startticks);
		end= to_srt_time(items[1]- startticks);
		text = sf.readline().replace(/\\/g,"");;;
		
		if (mode == 1) {
			text = sf.readline().replace(/\\/g,"");
		} else if (mode == 2) {
			text = text + "\n"+ sf.readline().replace(/\\/g,"");
		}
		
		if ((text != "BLANC") && (text != "LEER")) {
			if (i >= first_title) {
				of.writeline(i+"");
				of.writeline(start + " --> "+ end);
				of.writeline(text);
				of.writeline("");
			}
		}
		if (mode == 0) {
			text = sf.readline()
		}
		text = sf.readline()
		i++;
	}
	sf.close();
	lf.close();
	of.close();
}