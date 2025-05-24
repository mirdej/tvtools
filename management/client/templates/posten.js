

Template.posten.helpers({
    members: function () {
        return Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
    },

    jobs: [
        { job: "Egal" },
        { job: "Kamera", min: 3, max: 4 },
        { job: "Kameraregie", min: 0, max: 1 },
    ], //,{job:"Bildschnitt"},{job:"Operateur"},{job:"Untertitel"},{job:"Ton"},{job:"Licht"},{job:"Fotografie"},{job:"Making of"},{job:"Security"},{job:"Maske"},{job:"Moderation"},{job:"Sendeleitung"},{job:"Studiogast"},{job:"Streaming"},{job:"Stagemanager"},{job:"Prompter"}],
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

    hasJob: function (parent) {
        if (parent.posten === undefined) return "";
        if ($.inArray(this.job, parent.posten) != -1) return "posten";
        return "";
    },

    isSet: function () {
        if (this.posten.length) return "assigned";
        else return "";
    },

    happyPeople: function(){return Session.get("happy_people")}
});

Template.posten.events({
    "click .job": function (e, t) {
        //       console.log(e.target.parentElement.id, e.target.innerHTML, );

        var classes = e.target.className.split(" ");
        var theJob = e.target.innerHTML;

        if (classes[classes.length - 1] == "posten") {
            Members.update(e.target.parentElement.id, {
                $pull: { posten: theJob },
            });
        } else {
            Members.update(e.target.parentElement.id, {
                $push: { posten: theJob },
            });
        }
        //   Members.update(e.target.parentElement.id, {$set: {lust_1: e.target.innerHTML}});

        const membs = Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
        console.log(membs.count());
        let global_happyness = 0;

        membs.forEach(function (m) {
            let h = 0;
            if (m.posten.includes(m.lust_2)) h = 1;
            if (m.posten.includes(m.lust_1)) h = h + 2;
            if (h) {
                global_happyness = global_happyness + 1;
            }
            Members.update(m._id, { $set: { happy: h } });
            Session.set("happy_people",global_happyness)
        });
    },

    "click .clear": function (e, t) {
        var m = Members.find({ project: Session.get("Project").id });
        for (var i = 0; i < m.length; i++) {
            console.log(m._id);
            Members.update(m._id, { $set: { job: [] } });
        }
    },
});
