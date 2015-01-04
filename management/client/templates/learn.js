
Template.learn.helpers({
    members:function() {
       return Members.find({project:Session.get("Project").id}, {sort: {first: 1}});
    },
    
    showmember: function () {
       return  Session.equals('learnmember',this._id);
    },
    
    showname : function () {
       return Session.get('showname')
    }
})


Template.learn.rendered = function() {
     Session.set('showname', 0);
     
     Mousetrap.bind('space', function() {
     
     
        var array = Members.find({project:Session.get("Project").id}, {sort: {first: 1}}).fetch();
        var randomIndex = Math.floor( Math.random() * array.length );
        var element = array[randomIndex];
  
        var showname = (Session.get('showname') + 1) % 2 ;
        Session.set('showname', showname);
        if (!showname) Session.set('learnmember',element._id);
     });
}