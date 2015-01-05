var lust1, lust2;

Template.lueste.helpers({

    members: function () {
          return Members.find({project:Session.get("Project").id}, {pic:0},{sort: {first: 1}});
    },
    
    setlust: function () {
      lust1 = this.lust_0;
      lust2 = this.lust_1;
    },
    
    jobs: [{job:"Egal"},{job:"Kamera"},{job:"Kameraregie"},{job:"Bildschnitt"},{job:"Operateur"},{job:"Untertitel"},{job:"Ton"},{job:"Licht"},{job:"Fotografie"},{job:"Making of"},{job:"Security"},{job:"Maske"},{job:"Moderation"},{job:"Sendeleitung"},{job:"Studiogast"}],
    
    lustClass: function (){
     		 if (lust1 == this.job) return "lust_1";
     		 if (lust2 == this.job) return "lust_2";
    }
    
});

Template.lueste.events({
	"click .job": function (e,t) {
        var lustindex = Session.get('lustindex')
        console.log(e.target.parentElement.id, lustindex, e.target.innerHTML);
        if (lustindex) {
           Members.update(e.target.parentElement.id, {$set: {lust_2: e.target.innerHTML}});
        } else {
           Members.update(e.target.parentElement.id, {$set: {lust_1: e.target.innerHTML}});
        }
        lustindex= (lustindex + 1) % 2 ;
        Session.set('lustindex', lustindex); 
        

    }
});


Template.lueste.rendered = function () {
    Session.set('lustindex', 0);


 }