function capitaliseFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}


function formatPhone(t){
 var s = t.toString()
 s = s.replace(/[^0-9\+]/g, '');
  if (s.length==10) {
   s = s[0]+s[1]+s[2]+" "+s[3]+s[4]+s[5]+" "+s[6]+s[7]+" "+s[8]+s[9];
 }
   return s;
}