Template.posten.helpers({
    members: function () {
        return Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
    },

    show_assigned: function () {
        return Session.get("show_assigned");
    },

    jobs: function () {
        return Jobs.find({}, { sort: { order: 1 } });
    },

    lustClass: function (parent) {
        if (parent.lust_1 == this.job) return "lust_1";
        if (parent.lust_2 == this.job) return "lust_2";
        return "";
    },

    emoji: function () {
        if (this.happy == 1) return "🙂";
        if (this.happy == 2) return "😊";
        if (this.happy > 2) return "❤️";
        return "";
    },

    missing: function () {
        const membs = Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
        let miss = membs.count();

        membs.forEach(function (m) {
            if (m.posten.length) miss--;
        });
        return miss;
    },

    hasJob: function (parent) {
        if (parent.posten === undefined) return "";
        if ($.inArray(this.job, parent.posten) != -1) return "posten";
        return "";
    },

    isSet: function () {
        if (this.posten.length) {
            if (Session.get("show_assigned")) {
                return "assigned";
            } else {
                return "hidden";
            }
        } else return "";
    },

    isOccupied: function () {
        if (this.cnt >= this.max) return "assigned";
        else return "";
    },

    needsSomeone: function () {
        if (this.cnt < this.min) return "needsomeone";
        else return "";
    },

    happyPeople: function () {
        return Session.get("happy_people");
    },
});

Template.posten.events({
    "click .job": function (e, t) {
        //       console.log(e.target.parentElement.id, e.target.innerHTML, );

        var classes = e.target.className.split(" ");
        var theJob = e.target.innerHTML.trim();
        console.log("clicked: ", theJob);

        var theJobinDB = Jobs.findOne({ job: theJob });

        //console.log(theJob, theJobinDB.count());

        if (classes.includes("posten")) {
            Members.update(e.target.parentElement.id, {
                $pull: { posten: theJob },
            });
            Jobs.update(theJobinDB._id, {
                $inc: { cnt: -1 },
            });
        } else {
            Members.update(e.target.parentElement.id, {
                $push: { posten: theJob },
            });
            Jobs.update(theJobinDB._id, {
                $inc: { cnt: 1 },
            });
        }
        //   Members.update(e.target.parentElement.id, {$set: {lust_1: e.target.innerHTML}});

        const membs = Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
        let global_happyness = 0;

        membs.forEach(function (m) {
            let h = 0;
            if (m.posten.includes(m.lust_2)) h = 1;
            if (m.posten.includes(m.lust_1)) h = h + 2;
            if (h) {
                global_happyness = global_happyness + 1;
            }
            Members.update(m._id, { $set: { happy: h } });
            Session.set("happy_people", global_happyness);
        });
    },

    "click .clear": function (e, t) {
        console.log("Clear");
        var membs = Members.find({ project: Session.get("Project").id });
        console.log(membs.count());
        membs.forEach(function (m) {
            Members.update(m._id, { $set: { posten: [] } });
        });

        var jobss = Jobs.find({});
        jobss.forEach(function (m) {
            Jobs.update(m._id, { $set: { cnt: 0 } });
        });
    },

    "change .showAssigned input": function (e, t) {
        Session.set("show_assigned", e.target.checked);
    },
});
