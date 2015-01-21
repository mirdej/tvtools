var fps = 25;

function zeropad(i) {
if (i < 10) return "0"+i;
else return i;
}

function format_time(frames) {
 
 var t = parseInt(frames);
 
   var f = t % fps;
   t -= f;
   t /= fps;
   t = parseInt(t);
   
   var s = t % 60;
   t -= s;
   t /= 60;
   
   var m = t % 60;
   t -= m;
   t /= 60;
   
   var s = zeropad(t)+":"+zeropad(m)+":"+zeropad(s)+":"+zeropad(f);
   return s;
 
}


function read(p) {
	var lf = new File(p);
	if (!lf.isopen) {post(1,"no log"); return;}
	
	of = new File (p+"-chapters.txt","write");
	if (!of.isopen) {post(1,"no of"); return;}
	of.eof = 0;
	
    var text,temp;
	// parse xml file
	
	while (lf.position != lf.eof) {
		text = lf.readline();
		var time = 0;
		var name ="";
		var clip_start,clip_offset;
		
	    if (text.indexOf("offset") > -1) {
	       temp = text.replace(/.*offset\="([\d\/]*).*/,'$1');
	       if (temp.indexOf('/') > -1) {
   	           temp = temp.split("/");
	           clip_offset = temp[0]/temp[1]
	        } else { clip_offset = temp; }
	        temp = text.replace(/.*start\="([\d\/]*).*/,'$1');
	        
	          if (temp.indexOf('/') > -1) {
   	           temp = temp.split("/");
	           clip_start = temp[0]/temp[1]
	        } else { clip_start = temp; }
	        
	    }

		if (text.indexOf("<chapter-marker") > -1) {
    		   var items = text.split(" ");

    		   for (var i = 0; i < items.length; i++) {
    		       if (items[i].indexOf("start") > -1) {
    		           var t = items[i].split("/");
    		           time = ((parseInt(t[0].replace(/\D/g,'')))/(parseInt(t[1].replace(/\D/g,''))));
    		           time -= clip_start;
    		           time += clip_offset;

    		           time *= fps;
                       time = format_time(time);
                       


    		       }
    		       if (items[i].indexOf("value") > -1) {
    		          name = text.replace(/.*value\=(.*) .*/,'$1');

                       of.writeline(time + " " + name);
    		       }

    		   }
		}
	}
	
	of.close();
	lf.close();
	post ("done");post();
	
}


//                            <chapter-marker start="20873/50s" duration="100/5000s" value="Chapter 3" posterOffset="11/50s"/>
