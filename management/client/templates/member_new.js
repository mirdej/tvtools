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

function clear_form(event) {
 // Clear form
    $('#f').val("")
    $('#l').val("")
    $('#n').val("")
    Session.set("photo","");
}

//---------------------------------------------------------------------------- events

Template.member_new.events({
 'click .snap': function () {
      var cameraOptions = {
        width: 1024,
        height: 1024
      };

      MeteorCamera.getPicture(cameraOptions, function (error, data) {
        Session.set("photo", data);
      });
        return false;
    },
    
 'submit .cancel': function () {
    clear_form();
    return false;
 },
 
 'submit .member_new': function () {
     
     //prevent triggering when only first name is filled out
    if ($('#l').val()==="") {
       $('#l').focus();
       return false;
    }
 
    var f = capitaliseFirstLetter( $('#f').val() );
    var l = capitaliseFirstLetter($('#l').val() );
    var n = formatPhone( $('#n').val() );

    Members.insert({
      pic:Session.get("photo"),
      first: f,
      last: l,
      tel: n,
      gender:"male",
      image_rights:1,
      project: Session.get("Project").id,
      createdAt: new Date() // current time
    });

    clear_form();
    return false;
 }
});

//---------------------------------------------------------------------------- helpers

Template.member_new.helpers({
    photo: function () {
      return Session.get("photo");
    }
});
