

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
        
    show_all:function () {
      return Session.get("show_all");
    },
    
    doedit:function() {
 		return Session.get("edit");
    },
    docrop:function() {
 		return Session.get("crop");
    }
      
});

// ----------------------------------------------------------------------------------------------  

Template.memberlist_row.helpers({
    
    show_all:function () {
      return Session.get("show_all");
    }

  });
  
  
// ----------------------------------------------------------------------------------------------  

Template.memberlist.events({
  
    
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
          return false;
      },

      "click .crop": function () {
          Session.set("crop", this._id);
          return false;
      },
    
       "change .showall input": function (event) {
         Session.set("show_all", event.target.checked);
}
});

