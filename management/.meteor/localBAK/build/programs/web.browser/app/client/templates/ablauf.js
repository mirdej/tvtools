(function(){Template.ablauf.helpers({
    thegroups: function () {
        return Groups.find({project:Session.get("Project").id}, {sort: {rank:1,title: 1}});
    },
    
       members: function () {
    	return Members.find( {group:this._id}, {sort: {first: 1}});
    },
    
    noDescription: function() {
      return (this.description ==="Kein Beschrieb");
    },
    
    niceDuration: function() {
if (typeof this.duration !== 'undefined') {
    // the variable is defined
      var s = parseInt(this.duration % 60);
      var m = parseInt(this.duration / 60);
      if (s < 10) s = "0"+s;
      return m+":"+s;
    }
    },
    sendungsDate: function() {
    var d = new Date( Session.get("Project").end)
    return d.getDate() + ". " + Months[d.getMonth()] + " " +d.getFullYear();
    },
    
    totalTime: function(){
        
        var groups = Groups.find({project:Session.get("Project").id}).fetch();
        var t = 45; // jingle
        t += 90; // abspann
        
          for (var i = 0; i < groups.length; i++) {
          if (typeof groups[i].duration !== 'undefined') {

          		t += parseInt(groups[i].duration);
          		}
          }
         var myDate = new Date(null,null,null,null,null,t).toTimeString().replace(/.*(\d{2}:\d{2}:\d{2}).*/, "$1");
         
         return myDate;
    }

});


Template.ablauf.rendered = function() {
if (Meteor.userId()) {
   $("#sortable").sortable({
        stop: function(e, ui) {
          // get the dragged html element and the one before
          //   and after it
          el = ui.item.get(0)
          before = ui.item.prev().get(0)
          after = ui.item.next().get(0)
 
          // Here is the part that blew my mind!
          //  Blaze.getData takes as a parameter an html element
          //    and will return the data context that was bound when
          //    that html element was rendered!
          if(!before) {
            //if it was dragged into the first position grab the
            // next element's data context and subtract one from the rank
            newRank = Blaze.getData(after).rank - 1
          } else if(!after) {
            //if it was dragged into the last position grab the
            //  previous element's data context and add one to the rank
            newRank = Blaze.getData(before).rank + 1
          }
          else
            //else take the average of the two ranks of the previous
            // and next elements
            newRank = (Blaze.getData(after).rank +
                       Blaze.getData(before).rank)/2
 
          //update the dragged Item's rank
          Groups.update({_id: Blaze.getData(el)._id}, {$set: {rank: newRank}})
        }
    });
}
}

Template.ablauf.events({

 'submit .newGroup': function (e,t) {
        e.stopPropagation();
       e.preventDefault();
    var f =  $('#f').val() ;
    
    
    Groups.insert({
      title: f,
      description: "Kein Beschrieb",
      members:[],
      isLive:true,
      duration:240,
      project: Session.get("Project").id,
      createdAt: new Date() // current time
    });

    $('#f').val('')
 },
     "click .alpha": function (e,t) {
       e.stopPropagation();
       e.preventDefault();
          var groups = Groups.find({project:Session.get("Project").id}, {sort: {title: 1}}).fetch();
          for (var i = 0; i < groups.length; i++) {
          		Groups.update(groups[i]._id, {$set: {rank: i}});
          }
      },
      
      'keypress input.dauer': function (evt, template) {
    if (evt.which === 13) {
      var t = evt.target.value;
      var d;
         t = t.replace(/\D/g,'-')
         t=t.split('-');
         if (t.length == 1) d = parseInt(t[0]);
         else {
         d = 60*parseInt(t[t.length -2]) + parseInt(t[t.length-1]);
         }

         Groups.update(this._id, {$set: {duration: d}});
$(evt.target).blur();
    }
  }
});

})();
