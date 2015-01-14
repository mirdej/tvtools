Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");

if (Meteor.isClient) {

Session.set("Project", {
   name:"Oberengstringen",
   id:"oe2014_1",
   logo:"logo-OE.png",
   badge:"carte-de-presse-schultv.jpg",
   begin:"Mon Mar 3 2014 00:00:00 GMT+0100 (CET)",
   end:"Fri Mar 7 2014 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Oberengstringen Goldschmied",
   leitung : "Michael Egger, Maïté Colin",
   danke: "Michelle Bauert,  Maja Klemm,  Barbara Bachmann,  Herr & Frau Häusler,  Rahel Thali,  Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
});

  // This code only runs on the client
  Template.cams.helpers({
    cams: [
      { name: "Aïcha", color: "#333;", textcolor: "#fff;"},
      { name: "Bella", color: "#005000;", textcolor: "#fff;"},
      { name: "Djena", color: "#f1f1f1;", textcolor: "#000;"},
      { name: "Jeanne", color: "#000050;", textcolor: "#fff;"},
      { name: "Joséphine", color: "#b8a411;", textcolor: "#fff;"},
      { name: "Nikita", color: "#960000;", textcolor: "#fff;"},
      { name: "Zoë", color: "#ff9d1a;", textcolor: "#fff;"}
     ]
  });
  
  Template.branding.helpers({
    project_logo: function(){
         return '/logos/'+Session.get("Project").logo;
    },
    
    doPrint : function() {
       if (Session.get('printLogo')==0) return "dontPrint";
       else return "";
    }
   });
}



/*   name:"Volketswil",
   id:"volketswil2014",
   logo:"logo-Volketswil.png",
   badge:"carte-de-presse-schultv.jpg",
   begin:"Mon Jan 12 2015 00:00:00 GMT+0100 (CET)",
   end:"Fri Jan 16 2015 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Volketswil Lindenbühl",
   leitung : "Michael Egger<br />Susanne Kunz",
   danke: "Michelle Bauert,  Maja Klemm,  Barbara Bachmann,  Herr & Frau Häusler,  Rahel Thali,  Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
*/