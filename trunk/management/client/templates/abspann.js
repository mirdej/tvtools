Template.abspann.helpers({

vorlauf:function () {return Session.get('Project').abspannVorlauf; },
all: function () {return Members.find({project:Session.get("Project").id},{sort: {first: 1}})},

 danke: function () {
 var dank = Session.get('Project').danke;
 dank = dank.split(',');
 var result = [];
 for (var i = 0 ; i < dank.length; i++) {
   result.push({'name':dank[i]});
 }
 return result;

 },
 year: function () {
   var d = new Date(Session.get('Project').end);
   return d.getFullYear();
 },
 
 leitung: function() {
var dank = Session.get('Project').leitung;
 dank = dank.split(',');
 var result = [];
 for (var i = 0 ; i < dank.length; i++) {
   result.push({'name':dank[i]});
 }
 return result;
 }

})

Template.abspann.rendered = function () {
var d = new Date(Session.get('Project').end);
document.title = "Abspann "+Session.get('Project').name+"-Sendung vom "+d.toLocaleDateString();
}

Template.postenliste.helpers({
entries: function() {

    var posten		= ["Sendeleitung","Moderation","Kamera","Kameraregie","Bildschnitt","Operateur","Untertitel","Ton","Licht","Fotografie","Making of","Security","Maske","Studiogast"];
    var allMembers =  Members.find({project:Session.get("Project").id},{sort: {first: 1}}).fetch();

    var result =[];
    
    for (var i = 0; i < posten.length; i++) {
        var m = [];
        var job = posten[i];
        for (var j = 0; j < allMembers.length; j++) {
              if ($.inArray(job, allMembers[j].posten)!=-1) {
                m.push({'first':allMembers[j].first});
              }
        }
        if (m.length) {
          result.push({'job':job, 'members':m});
        }    
    }
  return result;

}
})

Template.spick.rendered = function() {
   Session.set('printLogo',0);
}