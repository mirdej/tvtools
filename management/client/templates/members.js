
  Template.memberlist.helpers({
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
    }
  });
  
  Template.memberlist_row.helpers({
    
    show_all:function () {
      return Session.get("show_all");
    }

  });
  
  Template.memberlist.events({
  "submit .new-member": function (event) {
    // This function is called when the new task form is submitted


    var f = event.target.first.value;
    var l = event.target.last.value;
    var n = event.target.tel.value;

    Members.insert({
      pic:Session.get("photo"),
      first: f,
      last: l,
      tel: n,
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
  },
  
  'click .snap': function () {
      var cameraOptions = {
        width: 800,
        height: 600
      };

      MeteorCamera.getPicture(cameraOptions, function (error, data) {
        Session.set("photo", data);
      });
    },
    
      "click .delete": function () {
      if (Session.get("show_all")) {
        Members.remove(this._id);
      } else {
          Members.update(this._id, {$set: {project:"deleted"}});
        }
      },
      
       "change .show-all input": function (event) {
  Session.set("show_all", event.target.checked);
}
});

