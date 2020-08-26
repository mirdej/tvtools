Template.import.events({

 'submit .import': function (e,t) {
        e.stopPropagation();
       e.preventDefault();
    var f =  $('#f').val() ;
    
    
    f = f.replace(/\n/g,'|');
    f = f.split('|');

    var s,n,l,t;
    for (var i = 0; i < f.length; i++) {

		s = ' ';n=' ';t=' ';
       s =  f[i].split(',');
       l = s[0].replace(/\"/g,'');
       	if ( s[1] != 'undefined' ) {       	n = s[1].replace(/\"/g,''); }
    	if ( s[2] != 'undefined' ) {		t = s[2].replace(/\"/g,'');  }     


    Members.insert({
      pic:"",
      first: n,
      last: l,
      tel: t,
      gender:"male",
      project: Session.get("Project").id,
      createdAt: new Date() // current time
    });
    }
    
    $('#f').val("") ;
    }
})
