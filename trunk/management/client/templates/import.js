Template.import.events({

 'submit .import': function (e,t) {
        e.stopPropagation();
       e.preventDefault();
    var f =  $('#f').val() ;
    
    
    f = f.replace(/\n/g,'|');
    f = f.split('|');

    var s,n,l,t;
    for (var i = 0; i < f.length; i++) {

       s =  f[i].split(',');
       n = s[0].replace(/\"/g,'');
       l = s[1].replace(/\"/g,'');
       t = s[2].replace(/\"/g,'');      


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
