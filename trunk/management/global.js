Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");
Projects = new Mongo.Collection("projects");
ProjectID = "SchulTV_Bülach_2015";

if (Meteor.isClient) {
Months = ["Januar","Februar","März","April","Mai","Juni","Juli","August","September","Oktober","November","Dezember"];

Session.set("Project", {
   name:"Bülach",
   id:ProjectID,
   logo:"logo-BU.png",
   badge:"carte-de-presse-schultv.jpg",
   begin:"Mon Feb 2 2015 00:00:00 GMT+0100 (CET)",
   end:"Fri Feb 6 2015 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Bülach Hinterbirch",
   leitung : "Michael Egger",
   danke: "Irina Keller,  Nhi Lê Thuy, Regula Knecht, Fam. Eckert, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
});

/*
Session.set("Project", {
   name:"Oberengstringen",
   id:ProjectID,
   logo:"logo-OE.png",
   badge:"carte-de-presse-schultv.jpg",
   begin:"Mon Feb 3 2014 00:00:00 GMT+0100 (CET)",
   end:"Fri Mar 7 2014 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Oberengstringen Goldschmied",
   leitung : "Michael Egger, Maïté Colin",
   danke: "Michelle Bauert,  Maja Klemm,  Barbara Bachmann,  Herr & Frau Häusler,  Rahel Thali,  Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
});

*/

  var von = new Date(Session.get("Project").begin);
   var bis = new Date(Session.get("Project").end);   
   
   var s = von.getDate() +". ";
   if (von.getMonth() != bis.getMonth() ) {
    s+= Months[von.getMonth()]+" ";
   }
   s += "bis ";
   s+=  bis.getDate() +". ";
   s+= Months[bis.getMonth()]+" ";
   s += bis.getFullYear();
   

   Session.set('ProjectPeriod',s);

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