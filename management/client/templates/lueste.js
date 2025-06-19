Session.setDefault("lustindex", 0);

Template.lueste.helpers({
    members: function () {
        return Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
    },
    jobs: function () {
        return Jobs.find(  {},          { sort: { order: 1 } });
    },
    lustClass: function (parent) {
        if (parent.lust_1 == this.job) return "lust_1";
        if (parent.lust_2 == this.job) return "lust_2";
        return "";
    },
});

Template.lueste.events({
    "click .job": function (e, t) {
        var lustindex = Session.get("lustindex");
        // console.log(e.target.parentElement.id, lustindex, e.target.innerHTML);
        if (lustindex) {
            Members.update(e.target.parentElement.id, {
                $set: { lust_2: e.target.innerHTML },
            });
        } else {
            Members.update(e.target.parentElement.id, {
                $set: { lust_1: e.target.innerHTML },
            });
        }
        lustindex = (lustindex + 1) % 2;
        Session.set("lustindex", lustindex);
    },


    
});


