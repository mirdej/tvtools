

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
    
    docrop:function() {
 		return Session.get("crop");
    }
      
});

// ----------------------------------------------------------------------------------------------  

Template.memberlist_row.helpers({
    
    show_all:function () {
      return Session.get("show_all");
    },
    doedit:function() {
 		return Session.equals("edit",this._id);
    },

  });
  
  
// ----------------------------------------------------------------------------------------------  

Template.memberlist.events({
  
    
      "click .delete": function (e,t) {
       e.stopPropagation();
       e.preventDefault();
      if (Session.get("show_all")) {
        Members.remove(this._id);
      } else {
          Members.update(this._id, {$set: {project:"deleted"}});
        }
      },
      
      "click .edit": function (e,t) {
      e.stopPropagation();
       e.preventDefault();
         Session.set("edit", this._id);
      },

      "click .save": function (e,t) {
       e.stopPropagation();
       e.preventDefault();
       
       var id = '#'+Session.get('edit');
       
		var f = $(id+ ' .firstname').val()
		var l = $(id+ ' .lastname').val()
		var n = $(id+ ' .phone').val()

		Members.update(Session.get("edit"),{$set:{
			first: f,
			last: l,
			tel: n
		}});
		
		Session.set("edit", null);
      },

      "click .crop": function (e,t) {
       e.stopPropagation();
       e.preventDefault();
          Session.set("crop", this._id);
      },
    
       "change .showall input": function (e,t) {
         Session.set("show_all", e.target.checked);
}
});