outlets = 1;
    var d = new Dict("imagedata");

function bang() {
 
     var f = new File ('~/Pictures/pictemp.base64','write');
    f.open();
    f.eof = 0;
    var chunks = new Array();
     chunks = d.get('image');
    post(chunks.length);
    
    chunks.forEach(function(t) {
        f.writestring(t);
    })
    f.close();
    outlet(0,'bang');
}
