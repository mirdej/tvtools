Template.posten.helpers({

    members: function () {
          return Members.find({project:Session.get("Project").id}, {sort: {first: 1}});
    },
    
    jobs: [{job:"Egal"},{job:"Kamera"},{job:"Kameraregie"},{job:"Bildschnitt"},{job:"Operateur"},{job:"Untertitel"},{job:"Ton"},{job:"Licht"},{job:"Fotografie"},{job:"Making of"},{job:"Security"},{job:"Maske"},{job:"Moderation"},{job:"Sendeleitung"},{job:"Studiogast"}],
   lustClass: function (parent){
     		 if (parent.lust_1 == this.job)  return "lust_1";
     		 if (parent.lust_2 == this.job) return "lust_2";
     		 return "";
    },
    hasJob: function (parent){
    console.log(this.job,parent.posten);
             if (parent.posten === undefined) return "";
     		 if ($.inArray(this.job, parent.posten)!=-1)  return "posten";
     		 return "";
    }
    
});

Template.posten.events({
	"click .job": function (e,t) {

//       console.log(e.target.parentElement.id, e.target.innerHTML, );
    
       var classes = e.target.className.split(' ');
       var theJob = e.target.innerHTML;
  
       if (classes[classes.length-1] == "posten") {
       Members.update(e.target.parentElement.id, {$pull: {posten: theJob}});
       } else {
       Members.update(e.target.parentElement.id, {$push: {posten: theJob}});
       }
        //   Members.update(e.target.parentElement.id, {$set: {lust_1: e.target.innerHTML}});

  
    },
    
    'click .clear' : function (e,t) {
    var m = Members.find({project:Session.get("Project").id});
    for (var i = 0; i < m.length; i++) {
    console.log(m._id);
       Members.update(m._id, {$set:{job:[]}});
    }
    }
});


