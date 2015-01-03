Template.groups.helpers({
    thegroups: function () {
        return Groups.find({project:Session.get("Project").id}, {sort: {title: 1}});
    }
});
//------------------------------------------------------------------------------------------

Template.group.helpers({
    doedit: function () {
        return Session.equals('editing_itemname',this._id);
    },
       bodyedit: function () {
        return Session.equals('editing_body',this._id);
    }
});
//------------------------------------------------------------------------------------------

Template.memberchooser.helpers({

    members: function () {
           return Members.find({project:Session.get("Project").id}, {sort: {first: 1}});
    }
});

//------------------------------------------------------------------------------------------

Template.groups.events({

 'submit .newGroup': function (e,t) {
        e.stopPropagation();
       e.preventDefault();
    var f =  $('#f').val() ;
    
    
    Groups.insert({
      title: f,
      description: "Kein Beschrieb",
      members:[],
      project: Session.get("Project").id,
      createdAt: new Date() // current time
    });

    $('#f').val('')
 }
});
//------------------------------------------------------------------------------------------

Template.group.events({
	"click .delete": function (e,t) {
		e.stopPropagation();
		e.preventDefault();
		Groups.update(this._id, {$set: {project:"deleted"}});
      },
      'dblclick .title': function (e, t) {
        e.stopPropagation();
       	e.preventDefault();
        Session.set('editing_itemname', this._id);
    },
      'dblclick .panel-body': function (e, t) {
        e.stopPropagation();
       	e.preventDefault();
        Session.set('editing_body', this._id);
    },
    'submit .title' : function (e,t) {
		e.stopPropagation();
		e.preventDefault();
		Groups.update(this._id, {$set: {title: e.target.title.value}});
         Session.set('editing_itemname', null);
     },
        'submit .description' : function (e,t) {
		e.stopPropagation();
		e.preventDefault();
		Groups.update(this._id, {$set: {description: e.target.description.value}});
         Session.set('editing_body', null);
     }
})

//------------------------------------------------------------------------------------------


Template.cams.events({
	'click':function (e,t) {
		e.stopPropagation();
		e.preventDefault();

		$('#cameralist').toggle();
		}
})

Template.cams.rendered = function() {
	this.$('.cam').draggable();
}

Template.group.rendered = function() {
	this.$( ".cameradrop" ).droppable({
      drop: function( event, ui ) {
        //console.log(event.target.id);
      //  console.log(event.originalEvent.target.id);
        Groups.update(event.target.id, {$set: {camera:event.originalEvent.target.id}})
      }
    });
}