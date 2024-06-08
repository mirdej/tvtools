Template.all.helpers({
       members: function () {
    	return Members.find( {group:"Hannah"}, {sort: {first: 1}});
    }
    })