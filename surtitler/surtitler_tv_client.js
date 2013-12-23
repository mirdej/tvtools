outlets = 2;

function anything(t) {
if (arguments[0] == "text"){
	var s = "";
	for (var i = 1; i < arguments.length; i++) {
		s += arguments[i];
		s += " ";
	}
	var o = 0;
	if (messagename == "subtitle_de"){o = 0;} else {o = 1;}
		outlet(o,s)
}

}