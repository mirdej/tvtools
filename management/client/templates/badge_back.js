Template.badgeback.helpers({
    members: function () {
        return Members.find(
            { project: Session.get("Project").id },
            { pic: 0 },
            { sort: { first: 1 } }
        );
    },
    archive: function () {
        return Session.get("Project").archive;
    },
    valid: function () {
        return Session.get("ProjectPeriod");
    },
    number: function () {
        return Session.get("Project").number;
    },
    name: function () {
        return Session.get("Project").name;
    },
    place: function () {
        return Session.get("Project").place;
    },
});

Template.badgeback.events({
    "click .ausweis": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        $("div.ausweis").hide();
        $("div.ausweis").first().show();
    },

    "click .showAll": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        $("div.ausweis").show();
    },
});

Template.badgeback.rendered = function () {
    Session.set("printLogo", 0);
};
