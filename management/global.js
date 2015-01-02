Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");

if (Meteor.isClient) {

Session.set("Project", {
   name:"Volketswil",
   id:"volketswil2014",
   logo:"logo-Volketswil.png"
});

  // This code only runs on the client
  Template.cams.helpers({
    cams: [
      { name: "Aïcha", color: "#111;", textcolor: "#fff;"},
      { name: "Bella", color: "#0f0;", textcolor: "#000;"},
      { name: "Djena", color: "#fff;", textcolor: "#000;"},
      { name: "Jeanne", color: "#00f;", textcolor: "#000;"},
      { name: "Joséphine", color: "#ff0;", textcolor: "#000;"},
      { name: "Nikita", color: "#f00;", textcolor: "#000;"},
      { name: "Zoë", color: "#f0f;", textcolor: "#000;"}
     ]
  });
  
  Template.branding.helpers({
    project_logo: function(){
         return '/logos/'+Session.get("Project").logo;
    }
   });
}