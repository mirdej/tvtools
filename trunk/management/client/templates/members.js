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

function new_member(event,g) {
    // This function is called when the new task form is submitted

    var f = capitaliseFirstLetter(event.target.first.value);
    var l = capitaliseFirstLetter(event.target.last.value);
    var n = formatPhone(event.target.tel.value);


    Members.insert({
      pic:Session.get("photo"),
      first: f,
      last: l,
      tel: n,
      gender:g,
      project: Session.get("Project").id,
      createdAt: new Date() // current time
    });

    // Clear form
    event.target.first.value = "";
    event.target.last.value = "";
    event.target.tel.value = "";
    Session.set("photo","");
    // Prevent default form submit
    return false;
  }

  Template.memberlist.helpers({
     editmembers:function(){
         return Members.find({_id:Session.get("edit")}, {sort: {first: 1}});
     },
  
    members: function () {
        if (Session.get("show_all")){
          return Members.find({}, {sort: {first: 1}});
      } else {
          return Members.find({project:Session.get("Project").id}, {sort: {first: 1}});
      }
    },
    
    member_count: function () {
    if (Session.get("show_all")){
      return Members.find({}).count();
    } else {
      return Members.find({project:Session.get("Project").id}).count();
    }
    },
    
    photo: function () {
      return Session.get("photo");
    },
    
    show_all:function () {
      return Session.get("show_all");
    },
    
    doedit:function() {
 return Session.get("edit");
    }
      });
  
  Template.memberlist_row.helpers({
    
    show_all:function () {
      return Session.get("show_all");
    }

  });
  
  

  Template.memberlist.events({
  
      'submit': function (event) {
      alert(event.target.name);
         new_member(event,"boy");
         return false;
       },

      'click .female': function (event) {
         new_member(event,"girl");
         return false;
       },
  
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
    
      "click .delete": function () {
      if (Session.get("show_all")) {
        Members.remove(this._id);
      } else {
          Members.update(this._id, {$set: {project:"deleted"}});
        }
        return false;
      },
      
      "click .edit": function () {
           Session.set("edit", this._id);
          // window.location.href = '/crop';

            return false;
      },
    
       "change .showall input": function (event) {
  Session.set("show_all", event.target.checked);
}
});


Template.editmemberform.events({
  'click .cancel': function () {
     Session.set("edit", null);
        return false;
  },

  "submit": function (event) {
     
        
    var f = event.target.up_first.value;
     var l = event.target.up_last.value;
    var n = event.target.up_tel.value;


 Members.update(Session.get("edit"),{$set:{
      first: f,
      last: l,
      tel: n,
      pic:$(".img-container > img").cropper("getDataURL")
       }});
     Session.set("edit", null);

        return false;
  }
});


Template.editmemberform.rendered = function() {
$(".img-container > img").cropper({
  aspectRatio: 0.777777,
  data: {
    x: 0,
    y: 0,
    width: 350,
    height: 450
  },
  done: function(data) {
    // Output the result data for cropping image.
  }
});
$(".img-container > img").cropper("clear")}