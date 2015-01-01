
  Template.memberlist.helpers({
    members: function () {
      return Members.find({});
    }
  });
  
  Template.memberlist.events({
  "submit .new-member": function (event) {
    // This function is called when the new task form is submitted


    var f = event.target.first.value;
    var l = event.target.last.value;
    var n = event.target.tel.value;

    Members.insert({
      first: f,
      last: l,
      tel: n,
      createdAt: new Date() // current time
    });

    // Clear form
    event.target.first.value = "";
    event.target.last.value = "";
    event.target.tel.value = "";

    // Prevent default form submit
    return false;
  }
});
