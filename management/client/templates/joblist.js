Template.joblist.helpers({
    jobs: function () {
        thejobs = Jobs.find({}, { sort: { order: 1 } });
        console.log("Jobs", thejobs.count());
        return thejobs;
    },
});

Template.joblist.events({
    "click .create": function (e, t) {
        thejobs = Jobs.find({});
        thejobs.forEach(function (j) {
            Jobs.remove(j._id);
        });

        Jobs.insert({ job: "Moderation", min: 1, max: 1, cnt: 0, order: 0 });
        Jobs.insert({ job: "Egal", min: 0, max: 0, cnt: 0, order: 1 });
        Jobs.insert({ job: "Kamera", min: 2, max: 4, cnt: 0, order: 2 });
        Jobs.insert({ job: "Kameraregie", min: 0, max: 1, cnt: 0, order: 3 });
        Jobs.insert({ job: "Bildschnitt", min: 1, max: 1, cnt: 0, order: 4 });
        Jobs.insert({ job: "Operateur", min: 1, max: 1, cnt: 0, order: 5 });
        Jobs.insert({ job: "Untertitel", min: 1, max: 1, cnt: 0, order: 6 });
        Jobs.insert({ job: "Ton", min: 1, max: 1, cnt: 0, order: 7 });
        Jobs.insert({ job: "Licht", min: 1, max: 1, cnt: 0, order: 8 });
        Jobs.insert({ job: "Fotografie", min: 1, max: 1, cnt: 0, order: 9 });
        Jobs.insert({ job: "Making of", min: 1, max: 1, cnt: 0, order: 10 });
        Jobs.insert({ job: "Security", min: 1, max: 1, cnt: 0, order: 11 });
        Jobs.insert({ job: "Maske", min: 1, max: 1, cnt: 0, order: 12 });
        Jobs.insert({ job: "Sendeleitung", min: 1, max: 1, cnt: 0, order: 13 });
        Jobs.insert({ job: "Studiogast", min: 1, max: 1, cnt: 0, order: 14 });
        Jobs.insert({ job: "Streaming", min: 1, max: 1, cnt: 0, order: 15 });
        Jobs.insert({ job: "Stagemanager", min: 1, max: 1, cnt: 0, order: 16 });
        /*         Jobs.insert({ job: "Prompter", min: 1, max: 1, cnt: 0 });
         */
    },
});
