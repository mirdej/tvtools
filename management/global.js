Members = new Mongo.Collection("members");

  
if (Meteor.isClient) {


Session.set("Project", {
   name:"Volketswil",
   id:"volketswil2014",
   logo:"logo-Volketswil.png"
});

Session.set("someakwardname","H");

Template.branding.helpers({
    project_logo: function(){
         return 'logos/'+Session.get("Project").logo;}
});

}


