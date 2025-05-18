outlets = 4;
var movie_outlet = 0;
var movie2_outlet = 1;
var layer_outlet = 2;
var dump_outlet = 3;

var handler = {
	instance : 0
}

var movie = new Dict('Movie_0');


function bang() {outlet(movie_outlet, 'getposition') }
function milliseconds(ms) { movie.set("duration", ms); movie.set("fullduration", ms); }
function seeknotify() {return;}
function instance(i) {
	handler.instance = i; 
	movie.name = "Movie_"+i;
	movie.set("filename" , '');
	movie.set("duration" , 0);
	movie.set("fullduration" , 0);
	movie.set("autoplay" , 0);
	movie.set("loop" , 0);
	movie.set("position" , 0.);
	movie.set("path" , '');
	movie.set('endtriggerms',20000);
}

function moviepath(p) {
	movie.set("path" , p);
	outlet(movie2_outlet,'read',p);
}

function dict_bang() {
	outlet(movie_outlet, 'autostart',movie.get("autoplay"));
	outlet(movie_outlet, 'loop',movie.get("loop"));
}

/*
function autoplay(i) {
	movie.set("autoplay",i);
	outlet(movie_outlet, 'autostart',i);
}

function loop(i) {
	movie.set("loop",i);
	outlet(movie_outlet, 'loop',i);
}

*/
function position(f) { 
	movie.set("position", f); 
	gettime(); 
	getremainingtime();
}

function slateposition(p){
	
	movie.set("duration" , parseInt(movie.get("fullduration") * p));
/*	post(movie.fullduration);
	post(movie.duration); */
}

function read(n,i) {
	if (i == 0) return;
	
	movie.set("filename",n);
	outlet(movie_outlet, 'autostart',movie.get("autoplay"));
	outlet(movie_outlet, 'loop',movie.get("loop"));
	outlet(movie_outlet, 'getmilliseconds')
	outlet(movie_outlet, 'getmoviepath');
}


function dump() {
	var yjson = movie.stringify();
	
	post("JSON from stringify() method!"); 
	post();
	post(yjson); 
	post();
		
	post(" "); 
	post();	
}


function skip_to(ms) {
	var pos;
	
	if (ms > 0) {
		pos = ms / movie.get("duration");
	} else {
		pos = (movie.get("duration") + ms) / movie.get("duration");
	}
	if (pos > 1.) pos = 1.;
	if (pos < 0.) pos = 0.;
	outlet(movie_outlet, 'position', pos);
}

//------------------------------------------------------------------------------------
//																	Dump Out Functions
function gettime() {
	movie.set('time',ms_to_timecode(movie.get("position") * movie.get("duration")));
}

function getremainingtime() {
	var rem = movie.get("duration") - movie.get("position") * movie.get("duration");
	movie.set('remainingtime', ms_to_timecode(rem));
	movie.set("endtrigger", rem < movie.get("endtriggerms"))
}

//------------------------------------------------------------------------------------
//																	Helpers
function zeropad(i) {
	if (i < 10) return "0"+String(i);
	return String(i);
}

function ms_to_timecode(ms) { 
	var s = parseInt(ms/1000);
	var m = parseInt(s / 60);
	var s = s % 60;
	return zeropad(m) + ":" + zeropad(s);
}
