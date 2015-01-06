Template.badge.helpers({
        members: function () {
          return Members.find({project:Session.get("Project").id}, {pic:0},{sort: {first: 1}});
    },
      bg: function () {
          return "/badges/"+Session.get("Project").badge;
      }
})


Template.badge.events({
'click .ausweis' : function (e,t) {
		e.stopPropagation();
		e.preventDefault();
		e.target.toggle()
	}
})

Template.badge.rendered = function() {
   Session.set('printLogo',0);
}