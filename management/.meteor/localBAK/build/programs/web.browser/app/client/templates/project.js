(function(){Template.project.helpers({

   currentProject : function () {
   
   var d1 = new Date();
   var d2 = new Date();
   d1.setDate(d1.getDate() + 1);
   d2.setDate(d2.getDate() + 5);

   
       var p = Projects.find({current:true}).fetch();
       console.log(p);
       if (p.length == 0) {
        p = {
   name:"Neues Projekt",
   id:"neu",
   logo:"logo.png",
   badge:"carte-de-presse.jpg",
   begin:d1,
   end:d2,
   abspannVorlauf : "Name",
   leitung : "Michael Egger",
   danke: "Noëmi Blumenthal,  Tanja Stauffer,  Catja Loepfe,  Annick Perrenoud,  Bildungsdirektion, Kanton Zürich,  Schule & Kultur,  Belluard Bollwerk International,  Telooge"
};       return p

       } else {
              return p[0];
       }
   }

})



Template.project.events({
	"click .submit": function (e,t) {
	   e.stopPropagation();
       e.preventDefault();


  Projects.upsert(this._id, {$set: {
      current:true,
      name:$('#name').val(),
      id:$('#id').val(),
      logo:$('#logo').val(),
      badge:$('#badge').val(),
      begin:$('#begin').val(),
      end:$('#end').val(),
      abspannVorlauf :$('#abspannVorlauf').val(),
      leitung : $('leitung').val(),
      danke: $('danke').val(),
      createdAt: new Date() // current time
    }});	}
})

})();
