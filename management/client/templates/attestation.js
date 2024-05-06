Template.attestations.helpers({
        members: function () {
          return Members.find({project:Session.get("Project").id}, {pic:0},{sort: {first: 1}});
    }
 })

Template.attestation.helpers({
	
     valid: function () { return Session.get("ProjectPeriod"); },
      project: function () { return Session.get("Project").name; },
      place: function () { return Session.get("Project").place; },
	signature: function () { return '/signatures/'+parseInt(Math.random()*5)+'.png';},
	signaturestyle: function() {return 'style="position:absolute;bottom:1cm;left:3cm;z-index:2;width:8cm;height:1.5cm;transform: rotate('+parseInt(Math.random()*8.-4.)+'deg)">'; },
	rotate: function() {return "transform: rotate("+parseInt(Math.random()*90.-45.)+"deg)"},
	jobs:function() {
	var posten		= ["Sendeleitung","Moderation","Kamera","Kameraregie","Bildschnitt","Operateur","Untertitel","Ton","Licht","Fotografie","Making of","Security","Maske","Studiogast","Streaming"];
	var dict= {	"Sendeleitung":	{"female":"Sendeleiterin",	"male":"Sendeleiter"},
				"Moderation":	{"female":"Présentatrice",	"male":"Présentateur"},
				"Kamera":		{"female":"Camérawoman",	"male":"Caméraman"},
				"Kameraregie":	{"female":"Régisseur caméra",	"male":"Régisseur caméra"},
				"Bildschnitt":	{"female":"Bildschnitt",	"male":"Bildschnitt"},
				"Operateur":	{"female":"Operateurin",	"male":"Operateur"},
				"Untertitel":	{"female":"Untertitlerin",	"male":"Surtitreur"},
				"Ton":			{"female":"Ingénieure son",	"male":"Tonmeister"},
				"Licht":		{"female":"Lichtmeisterin",	"male":"Lichtmeister"},
				"Fotografie":	{"female":"Fotografin",		"male":"Fotograf"},
				"Making of":	{"female":"Kamerafrau",		"male":"Kameramann"},
				"Security":		{"female":"Security",		"male":"Security"},
				"Maske":		{"female":"Maquilleuse",			"male":"Maske"},
				"Studiogast":	{"female":"Studiogast",		"male":"Studiogast"},
				"Streaming":	{"female":"Streaming Controllerin",	"male":"Streaming Controller"},
				"Stagemanager":	{"female":"Stage Managerin",	"male":"Stage Manager"},
				"Prompter":	{"female":"Teleprompter Controllerin",		"male":"Teleprompter Controller"}
				}
				
    var s= [];
    if (this.gender == "female") s.push({title:"Journaliste"});
    else s.push({title:"Journaliste"});
    
    var g;
    if (typeof this.posten === 'undefined') return s;
        for (var i = 0; i < this.posten.length; i++) {
           s.push({title:dict[this.posten[i]][this.gender]});
        }
        return s;
    }
})
