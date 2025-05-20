Members = new Mongo.Collection("members");
Groups = new Mongo.Collection("groups");
Projects = new Mongo.Collection("projects");

ProjectID = "SchulTV-TEST";

if (Meteor.isClient) {
    Session.set("Project", {
        show_all: true,
        name: "TEST",
        place: "Walenbach",
        id: ProjectID,
        logo: "logo-universal.png",
        badge: "carte-de-presse-schultv2.jpg",
        begin: "Mon, 12 May 2025 07:00:00 +0200",
        end: "Fri, 16 May 2025 15:00:00 +0200",
        abspannVorlauf: "#49 Wetzikon Walenbach 5. Klasse",
        leitung: "Michael Egger, Margrit Egger",
        danke: "Cyril Senften, Moni Egger, Anne-Sophie Cosandey, Cali Flores, Catja Loepfe, Nico Grüninger Bildungsdirektion, Kanton Zürich,  Schule & Kultur",
    });

    // https://schultv.ch/api/project/meteorconf/ PASTE TILL HERE --------------

    Session.set("myip", "192.168.252.196");

    Months = [
        "Januar",
        "Februar",
        "März",
        "April",
        "Mai",
        "Juni",
        "Juli",
        "August",
        "September",
        "Oktober",
        "November",
        "Dezember",
    ];

    var von = new Date(Session.get("Project").begin);
    var bis = new Date(Session.get("Project").end);

    var s = von.getDate() + ". ";
    if (von.getMonth() != bis.getMonth()) {
        s += Months[von.getMonth()] + " ";
    }
    s += "bis ";
    s += bis.getDate() + ". ";
    s += Months[bis.getMonth()] + " ";
    s += bis.getFullYear();

    Session.set("ProjectPeriod", s);

    // This code only runs on the client
    Template.cams.helpers({
        cams: [
            { name: "Lara", color: "#050505;", textcolor: "#fff;" },
            { name: "Noëmi", color: "#005000;", textcolor: "#fff;" },
            { name: "Sophie", color: "#f1f1f1;", textcolor: "#000;" },
            { name: "Jeanne", color: "#000082;", textcolor: "#fff;" },
            { name: "Joséphine", color: "#DACB00;", textcolor: "#fff;" },
            { name: "Nikita", color: "#dd0000;", textcolor: "#fff;" },
            { name: "Maja", color: "#765849;", textcolor: "#fff;" },
            { name: "Vanessa", color: "#ff9d1a;", textcolor: "#fff;" },
            { name: "Désirée", color: "#CC4394;", textcolor: "#fff;" },
            { name: "Hannah", color: "#BEE8FD;", textcolor: "#000;" },
        ],
    });

    Template.branding.helpers({
        project_logo: function () {
            return "/logos/" + Session.get("Project").logo;
        },

        doPrint: function () {
            if (Session.get("printLogo") == 0) return "dontPrint";
            else return "";
        },
    });
}

if (Meteor.isServer) {
    // This code only runs on the server
    //

    Meteor.publish("members", function membersPublication() {
        return Members.find({ project: ProjectID });
        //return Members.find({ project:{ $regex: /SchulTV-OE/ }});

        //return Members.find({});
    });
    Meteor.publish("groups", function groupsPublication() {
        return Groups.find({ project: ProjectID });
    });
    Meteor.publish("projects", function projectsPublication() {
        return Projects.find();
    });
}
