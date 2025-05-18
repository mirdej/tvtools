Template.navbar.onCreated(function navbarOnCreated() {
 // this.state = new ReactiveDict();
 Meteor.subscribe('members');
 Meteor.subscribe('groups');
 // alert('here');
});


Template.navbar.helpers({

        myip: function () {
          return Session.get("myip")
        }
})