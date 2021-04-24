Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");
Projects = new Mongo.Collection("projects");
ProjectID = "SchulTV-HO-2021";
//ProjectID = "SchulTV-DI-2020";
//ProjectID = "SchulTV-DUB-2019";

//ProjectID = "SchulTV-Wattwil-2018";
//ProjectID = "SchulTV-OE-2018";
//ProjectID = "SchulTV-BUE-2015";
//ProjectID = "SchulTV-AD-2018";
//ProjectID = "SchulTV-SC-2019";
//ProjectID = "SchulTV-OE-2019-2";


if (Meteor.isClient) {
	Months = ["Januar","Februar","März","April","Mai","Juni","Juli","August","September","Oktober","November","Dezember"];

Session.set("Project", {
   name:"Hottingen",
   id:ProjectID,
   logo:"logo-HO.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon Apr 19 2021 00:00:00 GMT+0100 (CET)",
   end:"Fri Apr 23 2021 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Kantonsschule Hottingen, Klasse G1b",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Ina La Serra, Cornelia Heinz, Hansjürg Wicki, Hausdienst KSH, Cali Flores, Moni Egger, Anne-Sophie Cosandey, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
});


/*
Session.set("Project", {
	   name:"Oberenstringen 5a",
	   place:"Schulhaus Goldschmied Oberengstringen",
	   id:ProjectID,
	   logo:"logo-OE.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon May 20 2019 00:00:00 GMT+0100 (CET)",
	   end:"Fri May 24 2019 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Oberengstringen, Goldschmied\nKlasse 5a\nSbriz",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Alle Studiogäste, Olivia Sbriz, Herr & Frau Häusler, Anne-Sophie Cosandey, Cali Flores, Moni Egger, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	
*/
//ProjectID = "SchulTV-OE-2016-leitung";
/*
if (Meteor.isClient) {
	Months = ["Januar","Februar","März","April","Mai","Juni","Juli","August","September","Oktober","November","Dezember"];

Session.set("Project", {
	   name:"Oberenstringen 6a",
	   place:"Schulhaus Goldschmied Oberengstringen",
	   id:ProjectID,
	   logo:"logo-OE.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon May 13 2019 00:00:00 GMT+0100 (CET)",
	   end:"Fri May 17 2019 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Oberengstringen, Goldschmied\nKlasse 6a\nGolomb",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Alle Studiogäste, Annette Golomb, Herr & Frau Häusler, Anne-Sophie Cosandey, Cali Flores, Moni Egger, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	
	*/
/*
Session.set("Project", {
	   name:"Schlieren B3a",
	   place:"Schulhaus Kalktarren Schlieren",
	   id:ProjectID,
	   logo:"logo-Schlieren.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon May 06 2019 00:00:00 GMT+0100 (CET)",
	   end:"Fri May 10 2019 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Schlieren, Kalktarren\nKlasse B3a\nSprenger",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Alle Studiogäste, Rosmarie Sprenger, Anne-Sophie Cosandey, Cali Flores, Moni Egger, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	/*

Session.set("Project", {
	   name:"Adliswil 2a",
	   place:"Schulhaus Zentrum Adliswil",
	   id:ProjectID,
	   logo:"logo-AD.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon Apr 09 2018 00:00:00 GMT+0100 (CET)",
	   end:"Fri Apr 13 2018 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Adliswil, Zentrum\nKlasse 2a\nEnder",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Meggie Ender Kaplan, Cali Flores, Moni Egger, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
Session.set("Project", {
	   name:"Volketswil 2SAc LB",
	   place:"Schulhaus Lindenbüel Volketswil",
	   id:ProjectID,
	   logo:"logo-VW.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon Dec 04 2017 00:00:00 GMT+0100 (CET)",
	   end:"Fri Dec 08 2017 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Volketswil Lindenbüel\nKlasse 2SAc LB\nSpross / Wilhelm",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Sarah Wilhelm, Reinhard Spross, Moni Egger, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	Session.set("Project", {
	   name:"Dübendorf",
	   place:"Schulhaus Grüze Dübendorf",
	   id:ProjectID,
	   logo:"logo-DUB.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon Sep 04 2017 00:00:00 GMT+0100 (CET)",
	   end:"Fri Sep 08 2017 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "Dübendorf Grüze 5-7\nKlasse A2b\nDaniela Merz",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Alle unsere Interviewpartner, Daniela Merz, Moni Egger, Cali Flores, Anne Sophie Cosandey, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	Session.set("Project", {
	   name:"MEH",
	   id:ProjectID,
	   logo:"logo-MEH.png",
	   badge:"carte-de-presse-schultv2.jpg",
	   begin:"Mon Jun 26 2017 00:00:00 GMT+0100 (CET)",
	   end:"Fri Jun 30 2017 00:00:00 GMT+0100 (CET)",
	   abspannVorlauf : "MEH-Für Menschen mit Körperbehinderung",
	   leitung : "Michael Egger, Margrit Egger",
	   danke: "Janine Strebel, Elisabeth Ernst, Tilo Gysel, Rafael Cuadrado Mora, Moni Egger, Cali Flores, Noëmi Blumenthal, Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
	});
	*/
	/*
Session.set("Project", {
   name:"SchulTV Wattwil",
   id:ProjectID,
   logo:"logo-WA.jpg",
   badge:"carte-de-presse-schultv.jpg",
   begin:"Mon May 28 2016 00:00:00 GMT+0100 (CET)",
   end:"Fri June 1 2016 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Filmkurs Wattwil",
   leitung : "Michael Egger",
   danke: "Martin Kolb, Lena Seger, Daniel Chemotti, Margrit Egger, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
});

Session.set("Project", {
   name:"Oberengstringen",
   id:ProjectID,
   logo:"logo-OE.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon May 8 2017 00:00:00 GMT+0100 (CET)",
   end:"Fri May 12 2017 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Oberengstringen Goldschmied",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Barbara Bachmann, Herr & Frau Häusler, Moni Egger, Cali Flores, Herr Fabris, Herr Terrao, Frau Fotsch, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International"
});

Session.set("Project", {
   name:"Oberengstringen",
   id:ProjectID,
   logo:"logo-OE.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon Jun 11 2018 00:00:00 GMT+0100 (CET)",
   end:"Fri Jun 15 2018 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Oberengstringen Goldschmied",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Barbara Bachmann, Herr & Frau Häusler, Moni Egger, Herr Binggeli, Herr Terrão, Frau Fotsch, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International"
});
Session.set("Project", {
   name:"SchulTV",
   id:ProjectID,
   logo:"logo-OE.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon Jun 11 2018 00:00:00 GMT+0100 (CET)",
   end:"Fri Jun 15 2018 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Oberengstringen Goldschmied",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Barbara Bachmann, Herr & Frau Häusler, Moni Egger, Herr Binggeli, Herr Terrão, Frau Fotsch, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International"
});

Session.set("Project", {
   name:"Dübendorf",
   id:ProjectID,
   logo:"logo-DUB.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon Sep 2 2019 00:00:00 GMT+0100 (CET)",
   end:"Fri Sep 6 2019 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Dübendorf Grüze B2c",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Claudia Perpinyani, Ursina Kuhn, Mark Lim, Cali Flores, Moni Egger, Anne-Sophie Cosandey, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
});

Session.set("Project", {
   name:"Dietikon",
   id:ProjectID,
   logo:"logo-DI.png",
   badge:"carte-de-presse-schultv2.jpg",
   begin:"Mon Sep 7 2020 00:00:00 GMT+0100 (CET)",
   end:"Fri Sep 11 2020 00:00:00 GMT+0100 (CET)",
   abspannVorlauf : "Dietikon Luberzen P6b",
   leitung : "Michael Egger, Margrit Egger",
   danke: "Ladina Gubler, Roman Suter, Cali Flores, Moni Egger, Anne-Sophie Cosandey, Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur"
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
		{ name: "Lara", color: "#050505;", textcolor: "#fff;"},
  		{ name: "Noëmi", color: "#005000;", textcolor: "#fff;"},
		{ name: "Sophie", color: "#f1f1f1;", textcolor: "#000;"},
		{ name: "Jeanne", color: "#000082;", textcolor: "#fff;"},
		{ name: "Joséphine", color: "#DACB00;", textcolor: "#fff;"},
		{ name: "Nikita", color: "#dd0000;", textcolor: "#fff;"},
		{ name: "Maja", color: "#765849;", textcolor: "#fff;"},
		{ name: "Zoë", color: "#ff9d1a;", textcolor: "#fff;"},
		{ name: "Désirée", color: "#CC4394;", textcolor: "#fff;"},
		{ name: "Hannah", color: "#BEE8FD;", textcolor: "#000;"}
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




if (Meteor.isServer) {
  // This code only runs on the server
  Meteor.publish('members', function membersPublication() {
    return Members.find({project:ProjectID});
  });
  Meteor.publish('groups', function groupsPublication() {
    return Groups.find({project:ProjectID});
  });
  Meteor.publish('projects', function projectsPublication() {
    return Projects.find();
  });
}

