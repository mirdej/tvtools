Template.joblist.helpers({
    jobs: function () {
        thejobs = Jobs.find({});
        console.log("Jobs", thejobs.count());
        return thejobs;
    },
});

Template.joblist.events({
    "click .create": function (e, t) {
        /*   Jobs.remove({ job: "Egal" });
        Jobs.remove({ job: "Kamera" });
        Jobs.remove({ job: "Kameraregie" });
        Jobs.remove({ job: "Bildschnitt" });
        Jobs.remove({ job: "Operateur" });
 */
        /*         Jobs.remove({});
         */
        /*  Jobs.insert({ job: "Egal", min: 0, max: 0, cnt: 0 });
        Jobs.insert({ job: "Kamera", min: 2, max: 4, cnt: 0 });
        Jobs.insert({ job: "Kameraregie", min: 0, max: 1, cnt: 0 });
        Jobs.insert({ job: "Bildschnitt", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Operateur", min: 1, max: 1, cnt: 0 }); */
        /*         Jobs.insert({ job: "Untertitel", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Ton", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Licht", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Fotografie", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Making of", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Security", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Maske", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Moderation", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Sendeleitung", min: 1, max: 1, cnt: 0 });

        Jobs.insert({ job: "Studiogast", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Streaming", min: 1, max: 1, cnt: 0 });
        Jobs.insert({ job: "Stagemanager", min: 1, max: 1, cnt: 0 }); */
        /*         Jobs.insert({ job: "Prompter", min: 1, max: 1, cnt: 0 });
         */
    },
});
