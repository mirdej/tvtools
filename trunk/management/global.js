Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");

if (Meteor.isClient) {

Session.set("Project", {
   name:"Volketswil",
   id:"volketswil2014",
   logo:"logo-Volketswil.png",
   badge:"carte-de-presse-schultv.jpg",
   abspannVorlauf : "Volketswil Lindenbühl",
   leitung : "Michael Egger<br />Susanne Kunz",
   danke: "&nbsp;	Michelle Bauert<br />&nbsp;	Maja Klemm<br />&nbsp;	Barbara Bachmann<br />&nbsp;	Herr  &amp;  Frau Häusler<br />&nbsp;	Rahel Thali<br />&nbsp;	Noëmi Blumenthal<br />&nbsp;	Tanja Stauffer<br />&nbsp;	Catja Loepfe<br />&nbsp;	Annick Perrenoud<br />&nbsp;	Bildungsdirektion<br/>&nbsp;&nbsp;Kanton Zürich<br />&nbsp;	Schule &amp; Kultur<br />&nbsp;	Belluard Bollwerk<br/>&nbsp;&nbsp;International<br />&nbsp;	Telooge<br />"
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