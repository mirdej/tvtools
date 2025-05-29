var dragEnabled = 0;

Template.groups.helpers({
    thegroups: function () {
        return Groups.find(
            { project: Session.get("Project").id },
            { sort: { isLive: 1, title: 1 } }
        );
    },
});
//------------------------------------------------------------------------------------------

Template.group.helpers({
    doedit: function () {
        return Session.equals("editing_itemname", this._id);
    },
    bodyedit: function () {
        return Session.equals("editing_body", this._id);
    },
    members: function () {
        return Members.find({ group: this._id }, { sort: { first: 1 } });
    },
});
//------------------------------------------------------------------------------------------

Template.memberchooser.helpers({
    members: function () {
        return Members.find(
            { project: Session.get("Project").id },
            { sort: { first: 1 } }
        );
    },
});

Template.memberchooser.events({
    click: function (e, t) {
        e.stopPropagation();
        e.preventDefault();

        $("#memberlist").toggle();
        if (!dragEnabled) {
            $(".mem").draggable();
            dragEnabled = 1;
        }
    },
});
//------------------------------------------------------------------------------------------

Template.groups.events({
    "submit .newGroup": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        var f = $("#f").val();

        Groups.insert({
            title: f,
            description: "Kein Beschrieb",
            members: [],
            project: Session.get("Project").id,
            createdAt: new Date(), // current time
        });

        $("#f").val("");
    },
});
//------------------------------------------------------------------------------------------

Template.group.events({
    "click .delete": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Groups.update(this._id, { $set: { project: "deleted" } });
    },
    "click .removeMember": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        var member_id = this._id;
        var group_id = e.target.parentElement.parentElement.id.split("_")[1];
        Members.update(member_id, { $pull: { group: group_id } });
    },

    "dblclick .title": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Session.set("editing_itemname", this._id);
    },
    "dblclick .description": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Session.set("editing_body", this._id);
    },
    "submit .title": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Groups.update(this._id, { $set: { title: e.target.title.value } });
        Session.set("editing_itemname", null);
    },
    "submit .description": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Groups.update(this._id, {
            $set: { description: e.target.description.value },
        });
        Session.set("editing_body", null);
    },
});

//------------------------------------------------------------------------------------------

Template.cams.events({
    "click #cam-panel-heading": function (e, t) {
        e.stopPropagation();
        e.preventDefault();

        $("#cameralist").toggle();
    },

    "click .cam": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        var item = e.target;
        var cam = e.target.id.split("_")[1];

        //  if (dropped[0] == "camera") {
        var c =
            "color:" +
            $(item).css("color") +
            ";background-color:" +
            $(item).css("background-color") +
            ";";
        console.log(cam, c);

        Groups.insert({
            title: cam,
            description: "Kein Beschrieb",
            members: [],
            camera: cam,
            styling: c,
            project: Session.get("Project").id,
            createdAt: new Date(), // current time
        });

        $(item).hide();
    },
});

Template.cams.rendered = function () {
    //this.$('.cam').draggable();
};

Template.groups.rendered = function () {};

Template.group.rendered = function () {
    this.$(".cameradrop").droppable({
        drop: function (event, ui) {
            var group_id = event.target.id;
            if (event.originalEvent.target.id) {
                var item = event.originalEvent.target;
            } else {
                var item = event.originalEvent.target.parentElement;
            }
            var dropped = item.id.split("_");
            $(item).hide();

            if (dropped[0] == "camera") {
                var c =
                    "color:" +
                    $(item).css("color") +
                    ";background-color:" +
                    $(item).css("background-color") +
                    ";";
                console.log(c);
                Groups.update(group_id, {
                    $set: {
                        camera: dropped[1],
                        styling: c,
                    },
                });
            } else if (dropped[0] == "member") {
                var member_id = dropped[1];
                Members.update(member_id, { $push: { group: group_id } });
            }
        },
    });
};
