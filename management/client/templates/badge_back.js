Template.badgeback.helpers({
        members: function () {
          return Members.find({project:Session.get("Project").id}, {pic:0},{sort: {first: 1}});
    },
      project: function () {
          return Session.get("Project").name;
      }, 
      archive: function () { return Session.get("Project").archive; },
      valid: function () { return Session.get("ProjectPeriod"); },
      project: function () { return Session.get("Project").name; }
})


Template.badgeback.events({
'click .ausweis' : function (e,t) {
   e.stopPropagation();
   e.preventDefault();
   $('div.ausweis').hide();
	$(e.target).parent('div.ausweis').show();
 },
 
 'click .showAll' : function (e,t) {
  e.stopPropagation();
   e.preventDefault();
     $('div.ausweis').show();

 }

})

Template.badgeback.rendered = function() {
   Session.set('printLogo',0);
}