const PICWIDTH = 256;
const PICHEIGHT = 331;

Template.member_crop.helpers({
    edit: function () {
        return Session.get("crop");
    },

    cropname: function () {
        return Session.get("cropname");
    },
    pic: function () {
        return Members.findOne({ _id: Session.get("crop") }).pic;
    },
});

//------------------------------------------------------------------------------------------
Template.member_crop.events({
    keypress: function (e, t) {
        console.log(e);
    },

    "click .cancel": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        Session.set("crop", null);
        Session.set("photo", null);
    },

    "click .reset": function (e, t) {
        e.stopPropagation();
        e.preventDefault();
        $(".img-container > img").cropper("reset", true);
    },

    "click .save": function (e) {
        e.preventDefault();
        e.stopPropagation();
        var fullsize = $(".img-container > img").cropper("getDataURL");
        var thumbnail = $(".img-container > img").cropper(
            "getDataURL",
            { width: PICWIDTH, height: PICHEIGHT },
            "image/jpeg",
            0.6
        );
        Members.update(Session.get("crop"), {
            $set: {
                pic: fullsize,
                thumb: thumbnail,
            },
        });
        Session.set("crop", null);
    },

    "click .snap": function () {
        var cameraOptions = {
            width: 1024,
            height: 1024,
        };

        MeteorCamera.getPicture(cameraOptions, function (error, data) {
            $(".img-container > img").cropper("replace", data);
        });
        return false;
    },
});

//------------------------------------------------------------------------------------------
Template.member_crop.rendered = function () {
    var $inputImage = $("#inputImage");
    $inputImage.click();

    if (window.FileReader) {
        $inputImage.change(function () {
            var fileReader = new FileReader(),
                files = this.files,
                file;

            if (!files.length) {
                return;
            }

            file = files[0];

            if (/^image\/\w+$/.test(file.type)) {
                fileReader.readAsDataURL(file);
                fileReader.onload = function () {
                    $(".img-container > img")
                        .cropper("reset", true)
                        .cropper("replace", this.result);
                    $inputImage.val("");
                    $("#faketext").focus();
                };
            } else {
                showMessage("Please choose an image file.");
            }
        });
    } else {
        $inputImage.addClass("hide");
    }

    $(".img-container > img").cropper({
        aspectRatio: PICWIDTH / PICHEIGHT,
        data: {
            x: 0,
            y: 0,
            width: PICWIDTH,
            height: PICHEIGHT,
        },
        done: function (data) {
            // Output the result data for cropping image.
        },
    });
};
