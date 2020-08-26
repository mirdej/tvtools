Template.navbar.onCreated(function navbarOnCreated() {
 // this.state = new ReactiveDict();
 Meteor.subscribe('members');
 Meteor.subscribe('groups');
 // alert('here');
});